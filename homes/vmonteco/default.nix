{ config, pkgs, ... }: {
  config = {
    home-manager.users.vmonteco = { pkgs, lib, ... }: {
      imports = [
        ./terminator.nix
        ./tmux.nix
        ./zsh.nix
        ./i3.nix
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
