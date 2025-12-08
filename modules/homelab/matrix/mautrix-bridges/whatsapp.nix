{
  nixpkgs.config.permittedInsecurePackages = [
    "olm-3.2.16"
  ];

  # BUG: Journal logs:
    # FTL Configuration error error="bridge.permissions not configured"
    # INF See https://docs.mau.fi/faq/field-unconfigured for more info

  services.mautrix-whatsapp = {
    enable = true;

    settings = {
      appservice = {
        as_token = "";
        bot = {
          displayname = "WhatsApp Bridge Bot";
          username = "whatsappbot";
        };
        hostname = "[::]";
        hs_token = "";
        id = "whatsapp";
        port = 29318;
        username_template = "whatsapp_{{.}}";
      };
      bridge = {
        command_prefix = "!wa";
        permissions = {
          "*" = "relay";
        };
        relay = {
          enabled = true;
        };
      };
      database = {
        type = "sqlite3-fk-wal";
        uri = "file:/var/lib/mautrix-whatsapp/mautrix-whatsapp.db?_txlock=immediate";
      };
      direct_media = {
        server_key = "";
      };
      double_puppet = {
        secrets = { };
        servers = { };
      };
      encryption = {
        pickle_key = "";
      };
      homeserver = {
        address = "http://localhost:8448";
      };
      logging = {
        min_level = "info";
        writers = [
          {
            format = "pretty-colored";
            time_format = " ";
            type = "stdout";
          }
        ];
      };
      network = {
        displayname_template = "{{or .BusinessName .PushName .Phone}} (WA)";
        history_sync = {
          request_full_sync = true;
        };
        identity_change_notices = true;
      };
      provisioning = {
        shared_secret = "";
      };
      public_media = {
        signing_key = "";
      };
    };
  };
}
