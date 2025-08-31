{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    zathura # pdf viewer
  ];
}
