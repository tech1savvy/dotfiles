{pkgs, ...}: {
  programs.awscli = {
    enable = true;
    # credentials =
    package = pkgs.awscli2;
    settings = {
      "default" = {
        region = "ap-south-1";
        output = "json";
      };
    };
  };
}
