{ pkgs, ... }:
let
  gitUsername = "tech1savvy";
  gitEmail = "amankumar010604@gmail.com";
in
{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = gitUsername;
        email = gitEmail;
      };
      init.defaultBranch = "main";
    };
  };
}
