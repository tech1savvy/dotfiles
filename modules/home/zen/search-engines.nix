{ pkgs, ... }: {
  programs.zen-browser.profiles.default.search = {
    force = true; # Enforce declared search engines on each rebuild
    default = "ddg";
    engines = {
      mynixos = {
        name = "My NixOS";
        urls = [
          {
            template = "https://mynixos.com/search?q={searchTerms}";
          }
        ];
        icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
        definedAliases = [ "nx" ];
      };
      google = {
        name = "Google Search"; # 'Search' suffix to not collide with pre-defined one
        urls = [
          {
            template = "https://www.google.com/search?q={searchTerms}";
          }
        ];
        definedAliases = [ "g" ];
      };
      nixos-packages = {
        name = "NixOS Packages";
        urls = [
          {
            template = "https://search.nixos.org/packages?channel=unstable&query={searchTerms}";
          }
        ];
        definedAliases = [ "np" ];
      };
      nixos-options = {
        name = "NixOS Options";
        urls = [
          {
            template = "https://search.nixos.org/options?channel=unstable&query={searchTerms}";
          }
        ];
        definedAliases = [ "no" ];
      };
      perplexity = {
        name = "Perplexity Search"; # 'Search' suffix to not collide with pre-defined one
        urls = [
          {
            template = "https://www.perplexity.ai/search?q={searchTerms}";
          }
        ];
        definedAliases = [ "p" ];
      };
      chatgpt = {
        name = "ChatGPT";
        urls = [
          {
            template = "https://chatgpt.com/?q={searchTerms}&hints=search";
          }
        ];
        definedAliases = [ "gpt" ];
        icon = "https://chatgpt.com/cdn/assets/favicon-eex17e9e.ico";
      };
      home-manager-options = {
        name = "Home Manager Options";
        urls = [
          {
            template = "https://home-manager-options.extranix.com/?query={searchTerms}&release=master";
          }
        ];
        definedAliases = [ "hmo" ];
      };
      github = {
        name = "GitHub Search";
        urls = [
          {
            template = "https://github.com/search?q={searchTerms}";
          }
        ];
        definedAliases = [ "gh" ];
      };

      bing.metaData.hidden = "true";
      wikipedia.metaData.hidden = "true";
    };
  };
}
