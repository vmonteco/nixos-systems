{ config, pkgs, ... }: {
  config = {
    home-manager.users.vmonteco = { pkgs, lib, ... }: {
      imports = [
        ./emacs
        ./i3.nix
        ./terminator.nix
        ./tmux.nix
        ./zsh.nix
      ];

      programs = {
        home-manager.enable = true;
      };
      home = {
        shellAliases = {
          emacs = "emacs -nw";
        };
        
        stateVersion = "26.05";
      };
    };
  };
}
