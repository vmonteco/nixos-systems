{ config, pkgs, ... }: {
  imports = [
  ];

  config = {
    programs = {
      # firefox.enable = true;
      zsh.enable = true;
      git.enable = true;
      steam = {
        enable = true;
        extraCompatPackages = with pkgs; [
          proton-ge-bin
        ];
      };
    };

    environment.systemPackages = with pkgs; [
      protonup-qt
    ];
  };
}
