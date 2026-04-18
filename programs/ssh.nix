{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;

    matchBlocks = {
      "*" = {

      };

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
