{
  plugins.neo-tree = {
    enable = true;
    settings = {
      close_if_last_window = true;
      event_handlers = {
        file_opened = /*lua*/ ''
          function (file_path)
            require("neo-tree.command").execute({ action = "close" })
          end
        '';
      };
    };
  };


  keymaps = [
    { mode = "n"; key = "<leader>\\"; action = "<cmd>Neotree filesystem toggle right<CR>"; options = { desc = "File explorer"; }; }
  ];
}
