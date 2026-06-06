{ config, lib, pkgs, ... }: {
  imports = [
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

    services = {
      xserver = {
        enable = true;
        displayManager.lightdm.enable = true;
        windowManager.i3.enable = true;
      };
      libinput.enable = true;
      openssh.enable = true;
    };

    programs = {
      firefox.enable = true;
      zsh.enable = true;
    };

    users.users.vmonteco = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "video"
        "networkmanager"
      ];
      shell = pkgs.zsh;
      home = "/home/vmonteco";
      packages = with pkgs; [
      ];
      initialPassword = "test";
    };

    system.stateVersion = "26.05";
  };
}
