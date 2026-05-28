{
  services.suwayomi-server = {
    enable = true;
    group = "media";
    dataDir = "/var/lib/suwayomi-server";
    settings = {
      server = {
        port = 4000;
        ip = "0.0.0.0";

        # downloader
        downloadsPath = "/var/lib/suwayomi-server";
        downloadAsCbz = true;
        autoDownloadNewChapters = true;
        excludeEntryWithUnreadChapters = false;
        autoDownloadNewChaptersLimit = 0;
        autoDownloadIgnoreReUploads = false;
        # uploader
        excludeUnreadChapters = false;
        excludeNotStarted = false;
        excludeCompleted = true;
        globalUpdateInterval = 6;
        updateMangas = true;

        extensionRepos = [
          "https://raw.githubusercontent.com/keiyoushi/extensions/repo/index.min.json"
        ];
      };
    };
  };
}
