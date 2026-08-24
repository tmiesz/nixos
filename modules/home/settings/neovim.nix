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

      # Web
      vtsls
      vscode-langservers-extracted
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

      blink-cmp
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
        p.json

        # Web
        p.javascript
        p.typescript
        p.tsx
        p.html
        p.css
      ]))

    ];
  };

  xdg.configFile."nvim" = {
    source = ./nvim;
    recursive = true;
  };
}
