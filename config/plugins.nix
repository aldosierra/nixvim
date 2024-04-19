{
  plugins = {
    
    # Tabs for buffers
    bufferline = {
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

    # Syntax highlighting
    treesitter = {
      enable = true;
      indent = true;
      folding = true;
      nixvimInjections = true;
      nixGrammars = true;
      ensureInstalled = "all";
    };

    # Autotag
    ts-autotag.enable = true;

    # Better status line
    lualine = {
      enable = true;
      globalstatus = true;
      iconsEnabled = true;
    };

    # File finder
    telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = {
          action = "find_files";
          options.desc = "Telescope find files";
        };
        "<leader>fg" = {
          action = "live_grep";
          options.desc = "Telescope live grep";
        };
        "<leader>fs" = {
          action = "grep_string";
          options.desc = "Telescope grep string";
        };
        "<leader>fb" = {
          action = "buffers";
          options.desc = "Telescope buffers files";
        };
        "<leader>fh" = {
          action = "help_tags";
          options.desc = "Telescope help tags";
        };
        "<leader>fp" = {
          action = "git_files";
          options.desc = "Telescope git files";
        };
        "<leader>fm" = {
          action = "man_pages";
          options.desc = "Telescope man pages";
        };
      };
      extensions.fzf-native.enable = true;
    };

    # Better file explorer
    nvim-tree = {
      enable = true;
      autoClose = false;
      actions.openFile.quitOnOpen = true;
      hijackUnnamedBufferWhenOpening = true;
      openOnSetupFile = false;
      openOnSetup = true;
      autoReloadOnWrite = true;
      hijackCursor = true;
      git = {
        enable = true;
        ignore = true;
      };
    };

    # Language servers
    lsp = {
      enable = true;
      servers = {
        # Javascript / typescript server
        tsserver.enable = true;
        # Lua server
        lua-ls.enable = true;
        # Python server
        pylsp.enable = true;
        # Nix server
        nil_ls.enable = true;
        # C/C++ server
        clangd.enable = true;
        # Bash server
        bashls.enable = true;
        # Emmet server
        emmet_ls.enable = true;
        # HTML Server
        html.enable = true;
        # Markdown server
        marksman.enable = true;
        # Go server
        gopls.enable = true;
      };
      capabilities = ''
         vim.lsp.protocol.make_client_capabilities().textDocument.completion.completionItem.snippetSupport = true
      '';
      postConfig = ''
        local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
        for type, icon in pairs(signs) do
          local hl = "DiagnosticSign" .. type
          vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end
      '';
      onAttach = ''
          local opts = {buffer = bufnr, remap = false}
          vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
          vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
          vim.keymap.set("n", "<leader>ld", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
          vim.keymap.set("n", "<leader>[", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
          vim.keymap.set("n", "<leader>]", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
          vim.keymap.set("n", "<leader>la", "<cmd>Lspsaga code_action<CR>", opts)
          vim.keymap.set("n", "<leader>lf", "<cmd>Lspsaga finder<CR>", opts)
          vim.keymap.set("n", "<leader>lr", "<cmd>Lspsaga rename<CR>", opts)
          vim.keymap.set("n", "<leader>lo", "<cmd>Lspsaga outline<CR>", opts)
          vim.keymap.set("n", "<leader>lt", "<cmd>Lspsaga term_toggle<CR>", opts)
      '';
    };

    # Add symbols to lsp
    lspkind.enable = true;

    # Add lsp saga
    lspsaga = {
      enable = true;
      lightbulb.sign = false;
      outline.autoClose = true;
      codeAction.extendGitSigns = true;
    };

    # Autocomplete
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

    # Snippet manager
    luasnip.enable = true;

    # Autopairs
    nvim-autopairs = {
      enable = true;
      checkTs = true;
    };

    # Git signs
    gitsigns.enable = true;

    # Indent lines
    indent-blankline.enable = true;
  };
}

