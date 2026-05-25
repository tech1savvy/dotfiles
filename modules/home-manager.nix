{ inputs, ... }:
{
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
  };
}
