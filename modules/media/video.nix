{inputs, pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    vlc # GUI media player
    mpv # CLI media player
    socat # Transfers data between two endpoints, here using to send commands to mpv

    yt-dlp # download/stream yt videos

    open-in-mpv

    inputs.yt-x.packages."${system}".default
  ];
}
