{ pkgs, ... }:

{
  programs.tmux = {

    shortcut = "Space";
    baseIndex = 1;
    clock24 = true;
    keyMode = "vi";
    terminal = "xterm-256color";
    mouse = true;
    shell = "${pkgs.zsh}/bin/zsh";

    plugins = with pkgs.tmuxPlugins; [
      vim-tmux-navigator
      catppuccin
      sensible
    ];

    extraConfig = ''
      set-option -g status-position top

      set -g status-right-length 100
      set -g status-left-length 100
      set -g status-left ""
      set -g status-right "#{E:@catppuccin_status_session}"
    '';
  };
}
