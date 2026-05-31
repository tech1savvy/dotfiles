{
  ...
}:
{
  imports = [
    ./screenshot.nix
    ./hypr-rename-workspace.nix
  ];

  scripts = {
    screenshot.enable = true;
    hypr-rename-workspace.enable = true;
  };

}
