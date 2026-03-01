{ config, ... }:
{
  sops = {
    defaultSopsFile = ../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";

    age.keyFile = "/home/tech1savvy/.config/sops/age/keys.txt";

    secrets = {
      gemini-api-key = {
        owner = "tech1savvy";
      };
    };
  };
}
