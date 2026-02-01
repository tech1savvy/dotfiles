{
  pkgs,
  ...
}:
{
  imports = [
    # ./spicetify.nix
  ];

  environment.systemPackages = with pkgs; [
    # spotify
    termusic
    # spotdl
  ];
}
