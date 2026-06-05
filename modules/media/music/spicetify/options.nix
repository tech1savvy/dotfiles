{ lib, ... }:
with lib;
{
  options.spicetify = {
    enable = mkEnableOption "Spicetify Spotify client customization";

    unpackedExtensions = mkOption {
      type = types.attrsOf (types.submodule {
        options = {
          enable = mkEnableOption "this unpacked extension";
          src = mkOption {
            type = types.path;
            description = "Source path of the extension";
          };
          name = mkOption {
            type = types.str;
            description = "Filename of the extension (usually .js)";
          };
        };
      });
      default = { };
    };

    customApps = mkOption {
      type = types.attrsOf (types.submodule {
        options = {
          enable = mkEnableOption "this custom app";
          src = mkOption {
            type = types.path;
            description = "Source path of the custom app";
          };
          name = mkOption {
            type = types.str;
            description = "Filename of the custom app (usually index.js)";
          };
        };
      });
      default = { };
    };

    unpackedExtensionsList = mkOption {
      type = types.listOf (types.submodule {
        options = {
          src = mkOption { type = types.path; };
          name = mkOption { type = types.str; };
        };
      });
      internal = true;
      default = [ ];
    };

    customAppsList = mkOption {
      type = types.listOf (types.submodule {
        options = {
          src = mkOption { type = types.path; };
          name = mkOption { type = types.str; };
        };
      });
      internal = true;
      default = [ ];
    };
  };
}
