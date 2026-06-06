{ config, pkgs, ... }: {
  config = {
    home-manager.users.vmonteco = { pkgs, ... }: {
      programs.tmux = {
        enable = true;
        mouse = true;
      };
    };
  };
}
