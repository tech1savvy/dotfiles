{ pkgs, ... }: {
  spicetify.unpackedExtensions.hideImages = {
    src = pkgs.fetchFromGitHub {
      owner = "adventuretc";
      repo = "Spicetify-HideImages-Extension";
      rev = "main";
      hash = "sha256-5IASr7wx7P+6foRoGwy9NuBf5vNerMQm3WaDHWf6ego=";
    };
    name = "HideImages.js";
  };
}
