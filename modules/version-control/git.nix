{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    git
    gh
    # gh-dash # GitHub Issues & Requests TUI dashboard
  ];
}
