{ config, pkgs, ... }: {
  imports = [
    ./vmonteco
  ];

  config = {
    home-manager.useUserPackages = true;
  };
}
