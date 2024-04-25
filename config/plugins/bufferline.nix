{
  plugins.bufferline = {
    enable = true;
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
