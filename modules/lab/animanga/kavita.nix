{ config, ... }:
{
  services.kavita = {
    enable = true;
    user = "kavita";
    tokenKeyFile = config.sops.secrets."kavita/token".path;
    settings = {
      Port = 4030;
    };
  };

  users.users.kavita.extraGroups = [
    "media"
  ];
}
