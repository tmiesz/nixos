{ pkgs, ... }:

{
  programs.discord = {
    enable = true;
  };

  home.packages = [ pkgs.vesktop ];
}
