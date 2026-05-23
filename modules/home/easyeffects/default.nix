{ config, lib, pkgs, ... }:
{
  services.easyeffects = {
    enable = true;
    # preset = "default";
    # extraPresets = {
    #   input = {
    #     "my-preset.json" = { };
    #   };
    # };
  };
}
