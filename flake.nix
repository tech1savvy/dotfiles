{
  description = "Nixos config flake";

  nixConfig = {
    extra-substituters = [ "https://microvm.cachix.org" ];
    extra-trusted-public-keys = [ "microvm.cachix.org-1:oXnBc6hRE3eX5rSYdRyMYXnfzcCxC7yKPTbZXALsqys=" ];
  };

  inputs = {

    # NIXPKGS
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    # HARDWARE
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    # HOME-MANAGER
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # HYPRLAND
    hyprtasking = {
      url = "github:raybbian/hyprtasking";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };

    # LOGITECH
    solaar = {
      url = "https://flakehub.com/f/Svenum/Solaar-Flake/*.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # INFRA
    # SOPS-NIX
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # FLAKE-PARTS
    # flake-parts.url = "github:hercules-ci/flake-parts";
    # wrapper-modules.url = "github:BirdeeHub/nix-wrapper-modules";

    # DEN
    # import-tree.url = "github:vic/import-tree";
    # inputs.den.url = "github:vic/den";

    # MICROVM
    microvm = {
      url = "github:microvm-nix/microvm.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  # outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } (inputs.import-tree ./parts);

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      nixos-hardware,
      home-manager,
      stylix,
      sops-nix,
      solaar,
      microvm,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit
            inputs
            system
            pkgs-unstable
            ;
        };
        modules = [
          ./configuration.nix
          nixos-hardware.nixosModules.lenovo-legion-16ach6h
          home-manager.nixosModules.default
          stylix.nixosModules.stylix
          sops-nix.nixosModules.sops
          solaar.nixosModules.default
        ];

      };

      nixosConfigurations.vm = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          microvm.nixosModules.microvm
          ({ pkgs, ... }: {
            networking.hostName = "vm";
            users.users.root.password = "";
            users.users.tech1savvy = {
              isNormalUser = true;
              description = "tech1savvy";
              extraGroups = [ "wheel" ];
              password = "";
            };
            system.stateVersion = "25.11";

            services.xserver.enable = true;
            services.xserver.displayManager.lightdm.enable = true;
            services.xserver.windowManager.i3.enable = true;

            environment.systemPackages = with pkgs; [
              firefox
              alacritty
              i3status
              dmenu
            ];

            microvm = {
              vcpu = 4;
              mem = 2049; # QEMU hangs on exactly 2 GB
              graphics = {
                enable = true;
                backend = "gtk";
              };
              volumes = [
                {
                  mountPoint = "/var";
                  image = "var.img";
                  size = 256; # MB
                }
              ];
              shares = [
                {
                  proto = "9p";
                  tag = "ro-store";
                  source = "/nix/store/";
                  mountPoint = "/nix/.ro-store";
                }
              ];
              hypervisor = "qemu";
              socket = "control.socket";
            };
          })
        ];
      };

      checks.${system}.nixos = self.nixosConfigurations.nixos.config.system.build.toplevel;

      packages.${system}.vm = self.nixosConfigurations.vm.config.microvm.declaredRunner;
    };
}
