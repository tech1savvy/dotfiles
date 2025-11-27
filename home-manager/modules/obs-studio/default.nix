{pkgs, ...}: {
  programs.obs-studio = {
    enable = true;
    # enableVirtualCamera = true;
    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-pipewire-audio-capture
      obs-vkcapture
      # obs-source-clone
      # obs-move-transition
      obs-composite-blur
      obs-backgroundremoval
    ];
  };

  # home.packages = with pkgs; [
  #   v4l-utils # Used For Things Like OBS Virtual Camera
  # ];
}
