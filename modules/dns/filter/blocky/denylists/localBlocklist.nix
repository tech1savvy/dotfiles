{
  denylists.local = [
    (builtins.readFile ./localBlocklist.txt)
  ];

  clientGroupsBlock.default = [
    "local"
  ];
}
