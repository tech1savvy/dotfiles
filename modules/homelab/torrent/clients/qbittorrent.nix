{pkgs, ...}: {
  services.qbittorrent = {
    enable = true;
    group = "media";
    webuiPort = 4020;

    serverConfig = {
      Preferences = {
        WebUI = {
          Username = "tech1savvy";
          Password_PBKDF2 = "@ByteArray(V4Djrb6vFvHDJ1dnxU92BA==:7RXMuGz8DI6Wk4FSEwZw0+hraMjdfadESie/vLnpg33M4JVE2eAOCBAgC+9Gcsx3dWQrquYg8b4BjsLw5Tts/A==)";

          AlternativeUIEnabled = true;
          RootFolder = "${pkgs.vuetorrent}/share/vuetorrent";
        };
      };
    };
  };
}
