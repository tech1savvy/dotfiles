{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    solaar = {
      url = "https://flakehub.com/f/Svenum/Solaar-Flake/*.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # spicetify-nix.url = "github:Gerg-L/spicetify-nix";

    # yt-x = {
    #   url = "github:Benexl/yt-x";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    #
    #
    # hyprland-virtual-desktops = {
    #   url = "github:levnikmyskin/hyprland-virtual-desktops";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    #
    # # NIRI
    #
    # nfsm = {
    #   url = "github:gvolpe/nfsm";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    #
    # niri-scratchpad = {
    #   url = "github:gvolpe/niri-scratchpad";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    #
    # nsticky = {
    #   url = "github:lonerOrz/nsticky";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    #
    # QICKSHELL, NOCTALIA-SHELL
    # quickshell = {
    #   url = "github:outfoxxed/quickshell";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    # noctalia = {
    #   url = "github:noctalia-dev/noctalia-shell";
    #   inputs.nixpkgs.follows = "nixpkgs";
    #   inputs.quickshell.follows = "quickshell";  # Use same quickshell version
    # };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      nixos-hardware,
      home-manager,
      stylix,
      solaar,
      # spicetify-nix,
      # yt-x,
      # stylix,
      # TODO: remove hyprland-virtual-desktops flake
      # hyprland-virtual-desktops,

      # nfsm,
      # niri-scratchpad,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
    in
    {
      # use "nixos", or your hostname as the name of the configuration
      # it's a better practice than "default" shown in the video
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
          solaar.nixosModules.default
          stylix.nixosModules.stylix
          # spicetify-nix.nixosModules.default
        ];
      };

      checks.${system}.nixos = self.nixosConfigurations.nixos.config.system.build.toplevel;
    };
}
