{ pkgs, ... }:
{
  programs.tmux = {
    extraConfig = ''
      set -g default-shell ${pkgs.zsh}/bin/zsh
    '';
  };
}
