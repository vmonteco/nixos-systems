{ config, lib, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./programs
    ./services
    ./homes
  ];

  config = {
    boot.loader.grub = {
      enable = true;
      device = "/dev/sda";
    };

    networking = {
      hostName = "vmonteco-T440";
      networkmanager.enable = true;
    };

    time.timeZone = "Europe/Paris";

    i18n = {
      defaultLocale = "en_US.UTF-8";
      extraLocales = [
        "fr_FR.UTF-8/UTF-8"
      ];
    };

    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
      "discord"
      "steam"
      "steam-unwrapped"
    ];
        
    fonts = {
      enableDefaultPackages = true;
      packages = with pkgs; [
        # "JetBrains Mono"
      ] ++ builtins.filter lib.attrsets.isDerivation (
        builtins.attrValues pkgs.nerd-fonts
      );
      fontconfig = {
        defaultFonts = {
          monospace = [
            "FiraCode Nerd Font Mono Ret"
          ];
        };
      };
    };

    console = {
      enable = true;
      keyMap = "us";
    };

    users.users.vmonteco = {
      isNormalUser = true;
      extraGroups = [
        "docker"
        "networkmanager"
        "video"
        "wheel"
      ];
      shell = pkgs.zsh;
      home = "/home/vmonteco";
      initialPassword = "test";
    };

    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];

    environment.systemPackages = with pkgs; [
      emacs
      tmux
      wget
      lynx
    ];

    virtualisation.docker.enable = true;
    
    system.stateVersion = "26.05";
  };
}
