{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Viewer
    zathura

    # Utils
    poppler-utils # merge, break pdfs, extract text
    # densify # compress pdfs
    ghostscript
    # ocamlPackages.cpdf # simplfied cli wrapper for ghostscript

    # Latex Compiler Headers
    texliveFull
  ];
}
