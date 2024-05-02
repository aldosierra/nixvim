{
  plugins.bufferline = {
    enable = false;
    indicator.style = "underline";
    diagnostics = "nvim_lsp";
    offsets = [
      {
        filetype = "NvimTree";
        text = "File explorer";
        separator = true;
        text_align = "center";
      }
    ];
  };
}
