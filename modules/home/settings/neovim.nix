{ pkgs, ... }:
{
  programs.neovim = {
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    withRuby = false;
    withPython3 = false;

    extraPackages = with pkgs; [
      # General

      # Lua
      lua-language-server

      # Csharp
      roslyn-ls
      netcoredbg
    ];

    plugins = with pkgs.vimPlugins; [
      which-key-nvim
      roslyn-nvim
      neogit
    ];
  };

  xdg.configFile."nvim" = {
    source = ./nvim;
    recursive = true;
  };
}
