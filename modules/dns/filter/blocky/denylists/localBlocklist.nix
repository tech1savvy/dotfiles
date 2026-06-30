{
  denylists = {
    local = [
      (builtins.readFile ./localBlocklist.txt)
    ];
    streaming = [
      (builtins.readFile ./streamingBlocklist.txt)
    ];
    animanga = [
      (builtins.readFile ./animangaBlocklist.txt)
      "https://raw.githubusercontent.com/newedgex/ani-manga-blocklist/main/refined-blacklist.txt"
    ];
  };

  allowlists = {
    streaming = [
      "music.youtube.com"
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
