{
  services.calibre-server = {
    enable = true;
  };
  services.calibre-web = {
    enable = true;
    options = {
      calibreLibrary = "/home/calibreLibrary";
    };
  };
}
