{
  settings.cpu = {
    format = "{usage}% ";
    tooltip = false;
  };

  style = ''
    #cpu {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 4px 4px 4px 0px;
      padding: 1px 6px;
    }

    #cpu.critical {
      background: @base01;
      border: 1px solid @base02;
      color: @base08;
    }
  '';
}
