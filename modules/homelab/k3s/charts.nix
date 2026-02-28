{
  services.k3s = {
    autoDeployCharts = {
      # Cert Manager
      "cert-manager" = {
        name = "cert-manager";
        repo = "https://charts.jetstack.io";
        version = "v1.19.4";
        hash = "sha256-0MIC9XuGU+uVf7Wy+UcsGxHPa1Gsxcd35Lgk97Wp6oc=";
        targetNamespace = "cert-manager";
        createNamespace = true;

        values = {
          crds.enabled = true;
        };
      };
      # Rancher
      "rancher" = {
        name = "rancher";
        repo = "https://releases.rancher.com/server-charts/stable";
        version = "v2.13.3";
        hash = "sha256-6fLKUiAZaI/dH8ePwQt8IMspX+4lFju8Y2nnv7inQvc=";
        targetNamespace = "cattle-system";
        createNamespace = true;

        values = {
          hostname = "rancher.home";
        };
      };
    };
  };
}
