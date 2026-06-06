{ config, pkgs, lib, ... }: {
  config = {
    xsession.windowManager.i3 = {
      enable = true;
      config = let
        mod = "Mod4";
      in {
        modifier = mod;

        window = {
          border = 0;
          titlebar = false;
        };

        keybindings = lib.mkOptionDefault {
          "${mod}+Shift+f" = "exec firefox";
          "${mod}+m" = "bar mode toggle";
          "${mod}+Shift+i" = "exec i3lock -c 000000";
        };
      };
    };
  };
}
