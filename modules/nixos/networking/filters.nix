{
  networking.stevenblack = {
    enable = true;

    whitelist = [
      "instagram.com"
      "reddit.com"
      "whatsapp.com"
    ];

    block = [
      "fakenews"
      "gambling"
      "porn"
      # "social"
    ];
  };
}
