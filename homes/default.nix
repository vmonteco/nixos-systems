{ config, pkgs, ... }: {
  imports = [
    ./vmonteco
  ];

  config = {
    home-manager = {
      backupFileExtension = "backup";
      useUserPackages = true;
    };
  };
}
