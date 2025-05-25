{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # file manager
    dolphin
    ark
  ];
}
