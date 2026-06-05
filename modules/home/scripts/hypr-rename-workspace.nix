{
  config,
  lib,
  pkgs,
  ...
}:
let
  cfg = config.scripts.hypr-rename-workspace;
in
{
  options.scripts.hypr-rename-workspace = {
    enable = lib.mkEnableOption "hypr-rename-workspace script";
  };

  config = lib.mkIf cfg.enable {
    home.packages = [
      (pkgs.writeShellScriptBin "hypr-rename-workspace" ''
        ID=$(/run/current-system/sw/bin/hyprctl activeworkspace -j | ${pkgs.jq}/bin/jq -r .id)
        NEW=$(${pkgs.rofi}/bin/rofi -dmenu -p "Rename workspace: ")
        [ -n "$NEW" ] && /run/current-system/sw/bin/hyprctl eval "hl.dispatch(hl.dsp.workspace.rename({ workspace = $ID, name = \"$ID-$NEW\" }))"
      '')
    ];
  };
}
