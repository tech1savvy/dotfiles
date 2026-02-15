{ lib, config, ... }:
{
  home.file."${config.xdg.configHome}/ohmyposh/zen.toml".source = ./path/to/your/zen.toml;
  programs.oh-my-posh = {
    enable = true;

    useTheme = "";
    settings = builtins.fromTOML (lib.readFile ./oh-my-posh-zen-config.toml);
  };
}
