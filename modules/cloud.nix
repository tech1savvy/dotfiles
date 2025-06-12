{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    dropbox

    # kio-gdrive # GDrive integration for Dolphin
  ];
}
