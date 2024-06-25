{
  plugins = {
    lsp-format.enable = true;
    none-ls = {
      enable = true;
      enableLspFormat = false;
      # onAttach = ''vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})'';
    };
  };
}
