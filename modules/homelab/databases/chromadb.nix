{
  services.chromadb = {
    enable = true;

    port = 5080;
    host = "127.0.0.1";
    openFirewall = false;

    dbpath = "/var/lib/chromadb";
    logFile = "/var/log/chromadb/chromadb.log";
  };
}
