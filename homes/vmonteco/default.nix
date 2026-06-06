{ config, pkgs, ... }: {

  imports = [
    ./terminator.nix
    ./tmux.nix
    ./zsh.nix
  ];
  
  config = {
    home-manager.users.vmonteco = { pkgs, ... }: {
      programs.zsh.enable = true;
      home.stateVersion = "26.05";
    };
  };
}
