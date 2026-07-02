{ lib, ... }:

{
  # imports = builtins.filter (lib.hasSuffix ".nix") (lib.filesystem.listFilesRecursive ./settings);

  programs = {
    steam.enable = true;
    gamemode.enable = true;
  };
}
