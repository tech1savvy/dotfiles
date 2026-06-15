{
  programs.zen-browser.policies =
    let
      mkExtensionSettings = builtins.mapAttrs (
        _: pluginId: {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/${pluginId}/latest.xpi";
          installation_mode = "force_installed";
        }
      );
    in
    {
      ExtensionSettings = mkExtensionSettings {
        "{0814291e-c531-4741-a8e7-9a3e8f62bf71}" = "remove-youtube-tracking";
        "{3579f63b-d8ee-424f-bbb6-6d0ce3285e6a}" = "chameleon-ext";
        "{4590d8b8-3569-46e3-a571-cabfbaeab2c1}" = "no-youtube-shorts";
        "{74145f27-f039-47ce-a470-a662b129930a}" = "clearurls";
        "{762f9885-5a13-4abd-9c77-433dcd38b8fd}" = "return-youtube-dislikes";
        "{85860b32-02a8-431a-b2b1-40fbd64c9c69}" = "github-file-icons";
        "{861a3982-bb3b-49c6-bc17-4f50de104da1}" = "custom-user-agent-revived";
        "{a4c4eda4-fb84-4a84-b4a1-f7c1cbf2a1ad}" = "refined-github-";
        "{ef9e884b-b6d8-4544-b0de-82c46c5e95de}" = "sponsorblock";
        "{fef652df-dd80-450e-b64a-567abeb3aa4b}" = "youtube-cards";
        "wappalyzer@crunchlabz.com" = "wappalyzer";
        "@searchengineadremover" = "searchengineadremover";
        "firefox-extension@steamdb.info" = "steam-database";
        "github-no-more@ihatereality.space" = "github-no-more";
        "github-repository-size@pranavmangal" = "gh-repo-size";
        "jid1-BoFifL9Vbdl2zQ@jetpack" = "decentraleyes";
      };
    };
}
