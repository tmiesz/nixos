{ lib, ... }:

{
  imports = builtins.filter (lib.hasSuffix ".nix") (lib.filesystem.listFilesRecursive ./settings);

  programs = {
    mnw.enable = true;
    steam.enable = true;
    gamemode.enable = true;
  };
}
