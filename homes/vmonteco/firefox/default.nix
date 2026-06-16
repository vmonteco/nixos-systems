{ config, pkgs, ... }: {
  config = {
    programs = {

      firefox = {
        enable = true;
        languagePacks = [
          "en-US"
          "fr"
        ];
        profiles = {
          default = {
            id = 0;
            name = "My default profile";
            isDefault = true;
            settings = {
              "browser.startup.homepage" = "https://nixos.org/|https://duckduckgo.com/";
            };
            search.engines = {
              google.metaData.hidden = true;
              perplexity.metaData.hidden = true;
              bing.metaData.hidden = true;
              qwant.metaData.hidden = true;
              wikipedia.metaData.hidden = true;
            };
          };
        };
        policies = {
          ExtensionSettings = let
            moz = short: "https://addons.mozilla.org/firefox/downloads/latest/${short}/latest.xpi";
          in {
            "uBlock0@raymondhill.net" = {
              default_area = "menupanel";
              install_url = moz "uBlock0@raymondhill.net";
              installation_mode = "force_installed";
              private_browsing = true;
            };
            "leechblockng@proginosko.com" = {
              default_area = "menupanel";
              install_url = moz "leechblockng@proginosko.com";
              installation_mode = "force_installed";
              private_browsing = true;
            };
            "momentum@momentumdash.com" = {
              default_area = "menupanel";
              install_url = moz "momentum@momentumdash.com";
              installation_mode = "force_installed";
              private_browsing = false;
            };
          };
        };
      };

    };
  };
}
