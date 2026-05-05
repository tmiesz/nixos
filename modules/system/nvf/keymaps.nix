{
  vim.keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      desc = "Toggle file explorer";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<cr>";
      desc = "Find files";
    }
  ];
}
