{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    zathura # pdf viewer
  ];
  services.calibre-server = {
    enable = false;
  };
  services.calibre-web = {
    enable = false;
    options = {
      calibreLibrary = "/home/calibreLibrary";
    };
  };
}
