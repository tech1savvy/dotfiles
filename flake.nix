{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    spicetify-nix.url = "github:Gerg-L/spicetify-nix";

    yt-x = {
      url = "github:Benexl/yt-x";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland-virtual-desktops = {
      url = "github:levnikmyskin/hyprland-virtual-desktops";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Niri
    # niri-flake = {
    #   url = github:sodiboo/niri-flake;
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    #
    # nfsm-flake = {
    #   url = github:gvolpe/nfsm;
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    #
    # niri-scratchpad-flake = {
    #   #url = git+file:///home/gvolpe/workspace/niri-scratchpad;
    #   url = github:gvolpe/niri-scratchpad;
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    #
    # nsticky-flake = {
    #   url = github:lonerOrz/nsticky;
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixos-hardware,
    spicetify-nix,
    yt-x,
    stylix,
    hyprland-virtual-desktops,
    ...
  } @ inputs: {
    # use "nixos", or your hostname as the name of the configuration
    # it's a better practice than "default" shown in the video
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./configuration.nix
        home-manager.nixosModules.default
        nixos-hardware.nixosModules.lenovo-legion-16ach6h
        spicetify-nix.nixosModules.default
        stylix.nixosModules.stylix
      ];
    };
  };
}
