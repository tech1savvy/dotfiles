{
  pkgs,
  config,
  ...
}: {
  services.espanso = {
    enable = true;
    package = pkgs.espanso-wayland;
  };

  home.file = {
    ".config/espanso/match/base.yml" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/espanso/base.yml";
    };
  };
}
