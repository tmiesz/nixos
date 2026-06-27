{ pkgs, ... }:

{
  imports = [ ./modules/home/default.nix ];

  home.username = "wiqht";
  home.homeDirectory = "/home/wiqht";

  home.stateVersion = "25.11";
}
