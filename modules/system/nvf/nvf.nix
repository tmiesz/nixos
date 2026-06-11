{
  programs.nvf = {
    enable = true;

    settings = {
      imports = [
        ./languages.nix
        ./keymaps.nix
      ];

      vim = {
        theme = {
          enable = true;
          name = "oxocarbon";
          style = "dark";
        };

        opts = {
          expandtab = true;
          shiftwidth = 2;
          tabstop = 2;
          autoindent = true;
          smartindent = true;
        };

        clipboard = {
          enable = true;
          registers = "unnamedplus";
          providers.xclip.enable = true;
        };

        telescope.enable = true;
        filetree.neo-tree.enable = true;
        autocomplete.blink-cmp.enable = true;
        treesitter.indent.enable = false;
      };
    };
  };
}
