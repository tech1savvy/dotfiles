{
  programs.k9s = {
    enable = true;
    aliases = {
      # Use pp as an alias for Pod
      pp = "v1/pods";
    };
    settings = {
      refreshRate = 2;
    };
    # views = {
    #   "v1/pods" = {
    #     columns = [
    #       "AGE"
    #       "NAMESPACE"
    #       "NAME"
    #       "IP"
    #       "NODE"
    #       "STATUS"
    #       "READY"
    #     ];
    #   };
    # };
  };
}
