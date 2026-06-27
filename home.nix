{ pkgs, lib, ... }:

{
  imports = builtins.filter (lib.hasSuffix ".nix") (lib.filesystem.listFilesRecursive ./modules/home);

  home.username = "wiqht";
  home.homeDirectory = "/home/wiqht";

  home.stateVersion = "25.11";
}
