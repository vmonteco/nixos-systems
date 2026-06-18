{ config, pkgs, ... }: {
  imports = [
    ./bluetooth.nix
  ];

  config  = {
    services = {
      xserver = {
        enable = true;
        displayManager.lightdm = {
          enable = true;
          background = "#000000";
        };
        windowManager.i3.enable = true;
      };
      libinput.enable = true;
      openssh.enable = true;
    };
  };
}
