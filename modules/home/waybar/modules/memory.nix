{
  settings.memory = {
    format = "{}% ";
  };

  style = ''
    #memory {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 2px 1px 2px 1px;
      padding: 1px 6px;
    }

    #memory.critical {
      background: @base01;
      border: 1px solid @base02;
      color: @base08;
    }
  '';
}
