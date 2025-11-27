{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    ansible
    molecule
    vagrant

    ansible-lint
  ];
}
