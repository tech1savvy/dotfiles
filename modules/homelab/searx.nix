{ lib, ... }:
{
  services.searx = {
    enable = true;

    settings = {
      server = {
        port = 9999;
        bind_address = "0.0.0.0";
        secret_key = "@SEARX_SECRET_KEY@";
      };

      engines = lib.singleton {
        name = "wolframalpha";
        shortcut = "wa";
        api_key = "@WOLFRAM_API_KEY@";
        engine = "wolframalpha_api";
      };
    };
  };
}
