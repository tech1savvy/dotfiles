{ pkgs, ... }:
{
  spicetify.customApps.visualizer = {
    src = pkgs.fetchFromGitHub {
      owner = "Konsl";
      repo = "spicetify-visualizer";
      rev = "dist";
      hash = "sha256-+QzNtKYpaW0EWpP6FULLFK3MOGj5r548pK2i8p5nZ0c=";
    };
    name = "index.js";
  };
}
