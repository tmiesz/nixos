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
          name = "gruvbox";
          style = "dark";
        };

        telescope.enable = true;
        filetree.neo-tree.enable = true;
        autocomplete.blink-cmp.enable = true;
      };
    };
  };
}
