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

        clipboard = {
          enable = true;
          registers = "unnamedplus";
          providers.xclip.enable = true;
        };

        telescope.enable = true;
        filetree.neo-tree.enable = true;
        autocomplete.blink-cmp.enable = true;
      };
    };
  };
}
