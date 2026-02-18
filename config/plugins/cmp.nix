{
  plugins = {
    # Enable luasnip
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
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-y>" = "cmp.mapping.confirm({ select = true })";
          "<C-p>" = "cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }), { 'i', 's' })";
          "<C-n>" = "cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }), { 'i', 's' })";
	  "<C-l>" = ''
	    cmp.mapping(function()
              if luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
              end
            end, { 'i', 's' })
	  '';
	  "<C-h>" = ''
	    cmp.mapping(function()
              if luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
              end
            end, { 'i', 's' })
	  '';
        };
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
      };
    };

    # Autopairs
    nvim-autopairs = {
      enable = true;
      settings.check_ts = true;
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
