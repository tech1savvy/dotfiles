{ pkgs, config, lib, ... }:
let
  cfg = config.development.go;
in
{
  options.development.go.enable = lib.mkEnableOption "Go development tools";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      go
      gotools # goimports
      gopls # lsp
      delve # debugger
      gofumpt # formatter
      golangci-lint # linter
    ];
  };
}
