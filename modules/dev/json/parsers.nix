{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    jless
    jq
  ];
}
