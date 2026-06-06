{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    # notes
    obsidian
    # diagrams, spaceial documents
    # excalidraw_export # CLI to export Excalidraw drawings to SVG and PDF

    # journal

    # TASKS
    # super-productivity

    # --TASKWARRIOR
    # taskwarrior3
    # taskwarrior-tui
    # tasksh # taskwarrior repl
    # vit # colorful and minimal
    # tasknc # clean and minimal, but requires v2
  ];
}
