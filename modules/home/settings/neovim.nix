{ pkgs, ... }:
{
  programs.neovim = {
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    withRuby = false;
    withPython3 = false;

    extraPackages = with pkgs; [
      lazygit
    ];

    plugins = with pkgs.vimPlugins; [
      lazygit-nvim
    ];
  };

  xdg.configFile."nvim" = {
    source = ./nvim;
    recursive = true;
  };
}
