{ config, lib, pkgs, ... }: {
  imports = [
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
