{ config, pkgs, ... }: {
  config = {
    programs = {
      emacs = {
        enable = true;
        extraPackages = epkgs: with epkgs; [
          xclip
        ];
      };
    };

    home = {
      file = {
        ".emacs.d" = {
          source = ./dotfiles/emacs.d;
          recursive = true;
        };
        ".myemacs.el" = {
          source = ./dotfiles/myemacs.el;
        };
      };
    };
  };
}
