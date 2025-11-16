{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Viewer
    zathura
    # Utilities
    densify
    # pdfarranger
    ocamlPackages.cpdf
    # Latex
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
