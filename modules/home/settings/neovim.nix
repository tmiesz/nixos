# { pkgs, ... }:
{
  programs.neovim = {
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    withRuby = false;
    withPython3 = false;
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
