{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    
    vlc # GUI media player
    mvp # CLI media player
  ];
}
