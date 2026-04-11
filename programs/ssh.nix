{
  programs.ssh = {
    enable = true;

    matchBlocks = {
      "github.com" = {
        user = "git";
        identityFile = "~/.ssh/id_github";
      };

      "codeberg.org" = {
        user = "git";
        identityFile = "~/.ssh/id_codeberg";
      };
    };
  };
}
