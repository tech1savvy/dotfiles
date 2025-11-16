{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    zathura # pdf viewer
    poppler-utils # merge, break pdfs
    densify # compress pdfs
    ocamlPackages.cpdf # simplfied cli wrapper for ghostscript
    # latex compiler headears
    texliveFull
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
