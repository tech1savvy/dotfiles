{
  services.kubernetes = {
    roles = [
      "master"
      "node"
    ];
    masterAddress = "127.0.0.1"; # localhost since, both master and node are on the same machine

    kubelet = {
      enable = true;
    };
  };
}
