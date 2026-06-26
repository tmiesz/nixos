{ pkgs, ... }:

{
  imports = [
    ./modules/home/git.nix
    ./modules/home/programs.nix
    ./modules/home/terminal.nix
    ./modules/home/zed-editor.nix
  ];

  home.username = "wiqht";
  home.homeDirectory = "/home/wiqht";

  home.packages = [
    pkgs.nixd
    pkgs.nixfmt
  ];

  home.stateVersion = "25.11";
}
