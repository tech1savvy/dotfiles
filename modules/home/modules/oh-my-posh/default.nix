{ lib, ... }:
{
  programs.oh-my-posh = {
    enable = true;

    useTheme = null;
    settings = { };
    configFile = ./zen.toml;
  };
}
