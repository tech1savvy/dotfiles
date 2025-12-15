{ pkgs, ... }:
{
  programs.qutebrowser = {
    enable = true;

    # Set this to false if you want to disable qutebrowser's automatic config.py generation
    loadAutoconfig = false;

    # Define custom search engines
    searchEngines = {
      DEFAULT = "https://duckduckgo.com/?q={}";
      g = "https://www.google.com/search?q={}";
      np = "https://search.nixos.org/packages?channel=unstable&query={}";
      no = "https://search.nixos.org/options?channel=unstable&query={}";
      p = "https://www.perplexity.ai/search?q={}";
      gpt = "https://chatgpt.com/?q={}&hints=search";
      hmo = "https://home-manager-options.extranix.com/?query={}+&release=master";
      npm = "https://www.npmjs.com/search?q={}";
    };

    # Define bookmarks for quick access
    quickmarks = {
      p = "https://www.perplexity.ai/";
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
      (pkgs.fetchurl {
        url = "https://cdn.jsdelivr.net/gh/adamlui/youtube-classic/greasemonkey/youtube-classic.user.js";
        sha256 = "sha256-qXaOoF6zfJM+BM/duTD4fqzMrozn9Xfd9Sdg+KkXPRg=";
      })
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
      # tabs.padding = {
      #   top = 2;
      # bottom = 2;
      #   left = 4;
      #   right = 4;
      # };
      content.javascript.enabled = true;
      url.start_pages = [ "https://www.perplexity.ai" ];
      url.default_page = "https://www.perplexity.ai";
      colors.webpage.darkmode.enabled = true;
    };

    # Use qutebrowser’s default bindings or disable them
    enableDefaultBindings = true;
  };
}
