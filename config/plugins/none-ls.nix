{
  plugins = {
    lsp-format.enable = true;
    none-ls = {
      enable = true;
      enableLspFormat = true;
      # onAttach = ''vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})'';
    };
  };
}
