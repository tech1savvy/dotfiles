{ pkgs, config, lib, ... }:
let
  cfg = config.development.terraform;
in
{
  options.development.terraform.enable = lib.mkEnableOption "Terraform development tools";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      terraform
      terragrunt
    ];
  };
}
