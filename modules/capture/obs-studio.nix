{ pkgs, config, ... }:
{
  programs.obs-studio = {
    enable = true;
    enableVirtualCamera = true;
    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-pipewire-audio-capture
      obs-vkcapture
      # obs-source-clone
      # obs-move-transition
      obs-composite-blur
      obs-backgroundremoval
      droidcam-obs
      pixel-art
      obs-vintage-filter
      obs-scale-to-sound
      obs-retro-effects
      obs-dvd-screensaver
      obs-composite-blur
      input-overlay
    ];
  };

  # environment.systemPackages = with pkgs; [
  #   v4l-utils
  # ];
  #
  # boot = {
  #   extraModulePackages = with config.boot.kernelPackages; [
  #     v4l2loopback
  #   ];
  #   kernelModules = [ "v4l2loopback" ];
  #   extraModprobeConfig = ''
  #     options v4l2loopback devices=1 video_nr=3 card_label="scrcpy_cam" exclusive_caps=1
  #   '';
  # };
}
