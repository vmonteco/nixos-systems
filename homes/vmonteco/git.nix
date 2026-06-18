{ ... }: {
  config = {
    programs.git = {
      enable = true;
      settings = {
        user = {
          name = "Vincent MONTÉCOT";
          email = "11329528+vmonteco@users.noreply.github.com";
        };
        init.defaultbranch = "master";
      };
    };
  };
}
