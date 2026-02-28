{
  pkgs,
  ...
}:
{
  imports = [
    # ./ytx.nix
  ];
  environment.systemPackages = with pkgs; [
    vlc # GUI media player
    mpv # CLI media player
    # open-in-mpv
    # socat # Transfers data between two endpoints, here using to send commands to mpv

    yt-dlp # download/stream yt videos
  ];
}
