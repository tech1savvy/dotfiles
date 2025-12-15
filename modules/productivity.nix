{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # notes
    obsidian

    # journal

    # tasks
    super-productivity

    taskwarrior3
    taskwarrior-tui
    tasksh # taskwarrior repl
    vit # colorful and minimal
    # tasknc # clean and minimal, but requires v2
  ];
}
