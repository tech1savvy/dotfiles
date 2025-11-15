{
  services.kavita = {
    enable = true;
    user = "kavita";
    tokenKeyFile = "/home/tech1savvy/dotfiles/secrets/kavita-token.txt";
    settings = {
      Port = 4030;
    };
  };

  users.users.kavita.extraGroups = [
    "media"
  ];
}
