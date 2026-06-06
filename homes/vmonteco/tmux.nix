{ config, pkgs, ... }: {
  config = {
    programs.tmux = {
      enable = true;
      mouse = true;
    };
  };
}
