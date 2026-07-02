{ pkgs, ... }:
{
  programs.neovim = {
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };

  # home.packages = with pkgs; [
  #   fd
  #   fzf
  #   gcc
  #   gnumake
  #   lazygit
  #   ripgrep
  #   tree-sitter
  # ];

  xdg.configFile."nvim" = {
    source = ./nvim;
    recursive = true;
  };
}
