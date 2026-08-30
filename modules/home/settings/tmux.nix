{ pkgs, ... }:

{
  programs.tmux = {

    shortcut = "Space";
    baseIndex = 1;
    clock24 = true;
    keyMode = "vi";
    terminal = "xterm-256color";

    plugins = with pkgs.tmuxPlugins; [
      vim-tmux-navigator
    ];

    extraConfig = ''
      set -g default-shell ${pkgs.zsh}/bin/zsh
    '';
  };
}
