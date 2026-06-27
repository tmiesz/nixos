{
  programs.ssh = {
    enableDefaultConfig = false;

    settings = {
      "github.com" = {
        User = "git";
        IdentityFile = "~/.ssh/id_github";
      };
      "codeberg.org" = {
        User = "git";
        IdentityFile = "~/.ssh/id_codeberg";
      };
    };
  };
}
