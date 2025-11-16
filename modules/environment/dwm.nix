{
  config,
  pkgs,
  ...
}: let
  tech1savvyDwm = pkgs.stdenv.mkDerivation {
    pname = "dwm-tech1savvy";
    version = "2025-05-26";
    src = pkgs.fetchFromGitHub {
      owner = "tech1savvy";
      repo = "dwm";
      rev = "master"; # Pin to a commit for reproducibility if desired
      sha256 = "U6e/d6fz+3/5R8jAmlTxk+28nkqgjwKS7jIPW4w3haw="; # Replace after first build
    };
    buildInputs = [pkgs.xorg.libX11 pkgs.xorg.libXft pkgs.xorg.libXinerama];
    installPhase = ''
      make PREFIX=$out install
    '';
  };

  # Autostart script for dwm session
  autostartScript = pkgs.writeShellScript "dwm-autostart.sh" ''
    #!/bin/sh
    # Example autostart commands:
    ${pkgs.feh}/bin/feh --bg-scale /path/to/your/wallpaper.jpg &
    ${pkgs.dunst}/bin/dunst &
    # Add your status bar script or other startup commands here, e.g.:
    # ${pkgs.dwmblocks}/bin/dwmblocks &
  '';

  # Xsession script that runs autostart then dwm
  xsessionScript = pkgs.writeShellScript "xsession-dwm-tech1savvy.sh" ''
    #!/bin/sh
    ${autostartScript}
    exec ${tech1savvyDwm}/bin/dwm
  '';
in {
  services.xserver = {
    enable = true;
    windowManager.dwm = {
      enable = true;
      package = tech1savvyDwm;
    };
    displayManager.sessionPackages = [
      (pkgs.stdenv.mkDerivation {
        name = "dwm-tech1savvy-session";
        builder = pkgs.writeScript "builder.sh" ''
          source $stdenv/setup
          mkdir -p $out/share/xsessions
          cat > $out/share/xsessions/dwm-tech1savvy.desktop <<EOF
          [Desktop Entry]
          Name=dwm-tech1savvy
          Comment=tech1savvy's dwm fork
          Exec=${xsessionScript}
          Type=Application
          EOF
          exit 0
        '';
        passthru.providedSessions = ["dwm-tech1savvy"];
      })
    ];
    displayManager.defaultSession = "none+dwm-tech1savvy";
    displayManager.startx.enable = true;
  };

  environment.systemPackages = with pkgs; [
    dmenu
    feh
    dunst
    # Add other tools you use in your autostart script
  ];

  system.nixos.label = "dwm";
}
