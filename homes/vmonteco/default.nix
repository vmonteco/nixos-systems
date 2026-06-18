{ config, pkgs, ... }: {
  config = {
    home-manager.users.vmonteco = { pkgs, lib, ... }: {
      imports = [
        ./emacs
        ./firefox
        ./git.nix
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
        packages = with pkgs; [
          scrot
          xournalpp
          gimp
          sxiv
          evince
          calibre
        ];
        stateVersion = "26.05";
      };
    };
  };
}
