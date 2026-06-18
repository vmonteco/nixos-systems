{ config, pkgs, ... }: {
  config = {
    hardware.bluetooth = {
      enable = true;
      powerOnBoot = true;
      settings = {
        General = {
          Experimenal = true;
        };
        Policy = {
          AutoEnable = true;
        };
      };
    };
  };
}
