{
  programs.qutebrowser = {
    enable = true;

    # Set this to false if you want to disable qutebrowser's automatic config.py generation
    loadAutoconfig = false;

    # Define custom search engines
    searchEngines = {
      DEFAULT = "https://duckduckgo.com/?q={}";
      g = "https://www.google.com/search?q={}";
      nix = "https://search.nixos.org/packages?channel=unstable&query={}";
    };

    # Define bookmarks for quick access
    quickmarks = {
      nixos = "https://nixos.org/";
      hm = "https://nix-community.github.io/home-manager/";
    };

    # Define custom command aliases
    aliases = {
      d = "download";
      q = "quit";
      wq = "quit --save";
    };

    # Keybindings and mappings
    keyBindings = {
      normal = {
        ",m" = "spawn mpv {url}";
        ",d" = "download-open";
      };
    };

    keyMappings = {
      "O" = "o"; # Make Shift+O behave like normal 'o'
    };

    # Optional greasemonkey scripts for custom JS
    greasemonkey = [
      ./userscripts/darkmode.js
      ./userscripts/fix_youtube_ads.js
    ];

    # Extra config in Python, directly injected into qutebrowser's config.py
    extraConfig = ''
      c.tabs.position = "top"
      c.colors.webpage.darkmode.enabled = True
      c.editor.command = ["alacritty", "-e", "nvim", "{}"]
    '';

    # Global settings that map to qutebrowser config.py keys
    settings = {
      tabs.show = "multiple";
      tabs.padding = {
        top = 2;
        bottom = 2;
        left = 4;
        right = 4;
      };
      content.javascript.enabled = true;
      url.start_pages = ["https://nixos.org"];
      url.default_page = "https://duckduckgo.com";
      colors.webpage.darkmode.enabled = true;
    };

    # Use qutebrowser’s default bindings or disable them
    enableDefaultBindings = true;
  };
}
