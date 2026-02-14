{
  programs.pay-respect = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;

    enableFishIntegration = false;
    enableNushellIntegration = false;

    options = [
      "--alias"
      "f"
    ];
  };
}
