{ pkgs, ... }:

{
  programs.foot = {
    settings = {
      main = {
        shell = "${pkgs.zsh}/bin/zsh";
        font = "FiraCode Nerd Font:size=12";
        dpi-aware = "yes";
      };
    };
  };
}
