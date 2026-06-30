{
  denylists = {
    local = [
      (builtins.readFile ./localBlocklist.txt)
    ];
    streaming = [
      (builtins.readFile ./streamingBlocklist.txt)
    ];
    animanga = [
      "https://raw.githubusercontent.com/newedgex/ani-manga-blocklist/main/refined-blacklist.txt"
    ];
  };

  schedules = import ../schedules/weekdays.nix;

  listSchedules = {
    streaming = ["weekdays"];
    animanga = ["weekdays"];
  };

  clientGroupsBlock.default = [
    "local"
    "streaming"
    "animanga"
  ];
}
