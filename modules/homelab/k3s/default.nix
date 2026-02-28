{
  imports = [
    ./networking.nix
    ./charts.nix
  ];
  services.k3s = {
    enable = false;

    nodeName = "homelab";
    role =
      # By default it also runs workloads as an agent.
      "server";

  };
}
