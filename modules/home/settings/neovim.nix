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
      fzf-lua

      neogit
      gitsigns-nvim

      roslyn-nvim

      nvim-tree-lua
      nvim-autopairs
      nvim-lspconfig

      mini-completion
      mini-snippets

      # Debugger
      nvim-dap
      nvim-dap-ui
      nvim-dap-virtual-text
      neotest-dotnet

      # Http requests
      kulala-nvim

      # Treesitter
      (nvim-treesitter.withPlugins (p: [
        # Defaults
        p.c
        p.lua
        p.markdown
        p.markdown_inline
        p.query
        p.vim
        p.vimdoc

        # Extras
        p.nix
        p.c_sharp
      ]))

    ];
  };

  xdg.configFile."nvim" = {
    source = ./nvim;
    recursive = true;
  };
}
