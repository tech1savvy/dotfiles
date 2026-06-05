{
  description = "Nixos config flake";

  inputs = {

    # NIXPKGS
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    stable.url = "github:nixos/nixpkgs/nixos-26.05";

    # HARDWARE
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    # HOME-MANAGER
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # HYPRLAND
    hyprland.url = "github:hyprwm/Hyprland";
    hyprtasking = {
      url = "github:raybbian/hyprtasking";
      inputs.nixpkgs.follows = "hyprland";
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
    # AI
    llm-agents.url = "github:numtide/llm-agents.nix";

  };

  # outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } (inputs.import-tree ./parts);

  outputs =
    {
      self,
      nixpkgs,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgsStable = import {
        inherit system;
        config.allowUnfree = true;
      };
    in
    {
      nixosConfigurations.legion = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit
            inputs
            system
            pkgsStable
            ;
        };
        modules = [
          ./hosts/legion/configuration.nix
          inputs.home-manager.nixosModules.default
          inputs.stylix.nixosModules.stylix
          inputs.sops-nix.nixosModules.sops
          inputs.solaar.nixosModules.default
        ];
      };

      nixosConfigurations.vm = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          inputs.microvm.nixosModules.microvm
          ./hosts/vm/configuration.nix
        ];
      };

      checks.${system}.legion = self.nixosConfigurations.legion.config.system.build.toplevel;

      packages.${system}.vm = self.nixosConfigurations.vm.config.microvm.declaredRunner;
    };
}
