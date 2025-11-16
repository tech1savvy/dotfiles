{
  pkgs,
  user,
  ...
}: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.tech1savvy = {
    isNormalUser = true;
    description = "tech1savvy";
    extraGroups = [
      "networkmanager"
      "wheel"
      "input"
      "uinput"
      "media"
    ];
    packages = with pkgs; [
    ];
  };
}
