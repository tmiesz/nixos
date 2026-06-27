{ pkgs, ... }:

{
  programs.foot = {
    settings = {
      main = {
        shell = "${pkgs.zsh}/bin/zsh";
      };
    };
  };
}
