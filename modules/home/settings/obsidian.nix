{ pkgs, ... }:

{
  programs.obsidian = {
    defaultSettings = {
      app = {
        vimMode = true;

        newFileLocation = "folder";
        newFileFolderPath = "unsorted";
        attachmentFolderPath = "files";
        promptDelete = false;
        alwaysUpdateLinks = true;

        spellcheck = true;
        tabSize = 4;
      };

      hotkeys = {
        "command-palette:open" = [
          {
            modifiers = [ "Mod" ];
            key = "P";
          }
        ];
        "global-search:open" = [
          {
            modifiers = [ "Mod" ];
            key = "F";
          }
        ];
        "switcher:open" = [
          {
            modifiers = [ "Mod" ];
            key = "O";
          }
        ];
      };

      corePlugins = [
        "file-explorer"
        "global-search"
        "switcher"
        "command-palette"
        "bookmarks"
        "file-recovery"
        {
          name = "daily-notes";
          settings = {
            folder = "daily";
            format = "DD-MM-YYYY";
          };
        }
      ];

      communityPlugins = with pkgs.obsidianPlugins; [
        calendar
      ];
    };

    vaults = {
      "learning".target = "Notes/learning";
      "work".target = "Notes/work";
      "projects".target = "Notes/projects";
      "general".target = "Notes/general";
    };
  };
}
