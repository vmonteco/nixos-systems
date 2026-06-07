{ config, pkgs, ... }: {
  config = {
    home.packages = with pkgs; [
      terminator
    ];
    
    programs = {
      terminator = {
        enable = true;
        config = {
          borderless = true;
          split_horiz = "<Alt><Shift>D";
          split_vert = "<Alt>D";
          profiles = {
            default = {
              visible_bell = true;
              icon_bell = true;
              show_titlebar = false;
              scrollbar_position = "hidden";
              use_system_font = false;
              font = "FiraCode Nerd Font Mono Ret 10";
            };
          };
        };
      };
    };
  };
}
