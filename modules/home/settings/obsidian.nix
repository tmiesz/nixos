{ pkgs, ... }:

{
  programs.obsidian = {
    defaultSettings = {
      app = {
        newFileLocation = "folder";
        newFileFolderPath = "unsorted";
        attachmentFolderPath = "files";
        promptDelete = false;
        alwaysUpdateLinks = true;
      };

      corePlugins = [
        "file-explorer"
        "global-search"
        "switcher"
        "command-palette"
        "bookmarks"
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
