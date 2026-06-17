{
  denylists.streaming = [
    (builtins.readFile ./streaming.txt)
  ];

  clientGroupsBlock.default = [
    "streaming"
  ];

  listSchedules.streaming = [
    "working-hours"
  ];
}
