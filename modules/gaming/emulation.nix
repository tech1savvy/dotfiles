{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    melonDS
  ];
}
