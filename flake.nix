{
  description = "Nixos config flake";

  inputs = {

    # NIXPKGS
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    # HARDWARE
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    # FLAKE-PARTS
    # flake-parts.url = "github:hercules-ci/flake-parts";
    # wrapper-modules.url = "github:BirdeeHub/nix-wrapper-modules";

    # DEN
    # import-tree.url = "github:vic/import-tree";
    # inputs.den.url = "github:vic/den";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    solaar = {
      url = "https://flakehub.com/f/Svenum/Solaar-Flake/*.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # HYPRLAND
    hyprtasking = {
      url = "github:raybbian/hyprtasking";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
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

      checks.${system}.nixos = self.nixosConfigurations.nixos.config.system.build.toplevel;
    };
}
