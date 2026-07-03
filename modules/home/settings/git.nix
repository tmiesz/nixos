{
  programs.git = {
    settings = {
      user = {
        name = "Tomasz Mieszkowicz";
        email = "tommieszkowicz@gmail.com";
      };

      core = {
        compression = 9;
        whitespace = "error";
        preloadindex = true;
      };

      init = {
        defaultBranch = "main";
      };

      status = {
        short = true;
        branch = true;
        showStash = true;
        showUntrackedFiles = "all";
      };

      diff = {
        context = 3;
        renames = "copies";
        interHunkContext = 10;
      };

      push = {
        autoSetupRemote = true;
        followTags = true;
      };

      pull = {
        default = "current";
        rebase = true;
      };

      rebase = {
        autoStash = true;
        missingCommitsCheck = "warn";
      };
    };
  };
}
