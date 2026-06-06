{ config, pkgs, ... }: {
  imports = [
  ];

  config = {
    programs = {
      firefox.enable = true;
      zsh.enable = true;
    };
  };
}
