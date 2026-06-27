{ pkgs, ... }:

{
  programs.mpv = {
    enable = true;
  };

  programs.librewolf = {
    enable = true;
  };

  programs.obsidian = {
    enable = true;

    defaultSettings.app = {
      newFileLocation = "folder";
      newFileFolderPath = "unsorted";
      attachmentFolderPath = "files";
    };

    vaults = {
      "learning".target = "Notes/learning";
      "work".target = "Notes/work";
      "projects".target = "Notes/projects";
      "general".target = "Notes/general";
    };
  };

  programs.ssh = {
    enable = true;
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

  home.packages = [
    pkgs.spotify
    pkgs.netflix
    pkgs.libreoffice
    pkgs.discord
    pkgs.liquidctl
    pkgs.nixd
    pkgs.nixfmt
  ];
}
