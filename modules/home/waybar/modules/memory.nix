{
  settings.memory = {
    format = "{}% ";
  };

  style = ''
    #memory {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 4px 4px 4px 0px;
      padding: 1px 6px;
    }

    #memory.critical {
      background: @base01;
      border: 1px solid @base02;
      color: @base08;
    }
  '';
}
