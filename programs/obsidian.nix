{ ... }:

{
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
}
