{
  plugins.neo-tree = {
    enable = true;
  };

  keymaps = [
    { mode = "n"; key = "<leader>fe"; action = "<cmd>Neotree filesystem toggle right<CR>"; }
  ];
}
