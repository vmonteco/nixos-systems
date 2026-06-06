{ config, pkgs, ... }: {
  config = {
    programs.zsh = {
      enable = true;
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "python"
          "invoke"
          "pip"
          "poetry"
          "ssh"
          "ssh-agent"
          "colorize"
          "docker"
          "docker-compose"
          "sudo"
        ];
        theme = "robbyrussell";
      };
    };
  };
}
