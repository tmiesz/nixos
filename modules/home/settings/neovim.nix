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

      # Nix
      nixd
      nixfmt

      # Csharp
      roslyn-ls
      netcoredbg
    ];

    plugins = with pkgs.vimPlugins; [
      which-key-nvim
      roslyn-nvim
      neogit
      nvim-tree-lua
      fzf-lua
      gitsigns-nvim
      nvim-autopairs
      nvim-lspconfig

      mini-completion
      mini-snippets

      # Debugger
      nvim-dap
      nvim-dap-ui
      nvim-dap-virtual-text

      # mason-nvim
      # nvim-treesitter
    ];
  };

  xdg.configFile."nvim" = {
    source = ./nvim;
    recursive = true;
  };
}
