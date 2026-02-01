{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    # spotify
    termusic
    # spotdl
  ];
}
