{
  plugins = {
    # Autocomplete sources
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-buffer.enable = true;
    cmp_luasnip.enable = true;
    luasnip.enable = true;
    # Cmp setup
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "path"; }
        { name = "buffer"; }
        ];
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-e>" = "cmp.mapping.close()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' })";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' })";
        };
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
      };
    };

    # Autopairs
    nvim-autopairs = {
      enable = true;
      checkTs = true;
    };
  };

  # Extra config for autopairs
  extraConfigLua = ''
    -- If you want insert `(` after select function or method item
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require('cmp')
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
  '';
}
