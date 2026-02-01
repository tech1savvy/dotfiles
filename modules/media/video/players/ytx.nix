{
  inputs,
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    inputs.yt-x.packages."${system}".default
  ];
}
