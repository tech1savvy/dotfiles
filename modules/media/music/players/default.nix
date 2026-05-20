{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    blanket # ambinet audio player

    # spotify
    tauon
    spotdl
  ];
}
