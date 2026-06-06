{ config, pkgs, ... }: {
  
  config = {
    home-manager.users.vmonteco = { pkgs, ... }: {
      home.packages = with pkgs; [
        terminator
      ];
      programs.zsh.enable = true;
      home.stateVersion = "26.05";
    };
  };
}
