{pkgs, ...}: {
  home.pointerCursor = {
    name = "Breeze";
    package = pkgs.kdePackages.breeze;
    size = 24; # Set your desired size
    gtk.enable = true;
    x11.enable = true;
  };

  # didn't work
}
