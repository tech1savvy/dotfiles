{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    kdePackages.kdenlive
    davinci-resolve
    shotcut
    ffmpeg
  ];
}
