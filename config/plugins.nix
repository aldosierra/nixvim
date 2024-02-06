{
  plugins = {
    
    # Tabs for buffers
    bufferline = {
      enable = true;
      indicator.style = "underline";
      # highlights.offsetSeparator = {
      #   offsets = {
      #     filetype = "NvimTree";
      #     text = "Nvim Tree";
      #     separator = true;
      #     text_align = "left";
      #   };
      # };
    };

    # Syntax highlighting
    treesitter = {
      enable = true;
      indent = true;
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
          desc = "Telescope find files";
        };
        "<leader>fg" = {
          action = "live_grep";
          desc = "Telescope live grep";
        };
        "<leader>fs" = {
          action = "grep_string";
          desc = "Telescope grep string";
        };
        "<leader>fb" = {
          action = "buffers";
          desc = "Telescope buffers files";
        };
        "<leader>fh" = {
          action = "help_tags";
          desc = "Telescope help tags";
        };
        "<leader>fp" = {
          action = "git_files";
          desc = "Telescope git files";
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
        pyright.enable = true;
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
    nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
      ];
      mapping = {
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-e>" = "cmp.mapping.close()";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<S-Tab>" = {
          action = "cmp.mapping.select_prev_item()";
          modes = [
            "i"
            "s"
          ];
        };
        "<Tab>" = {
          action = "cmp.mapping.select_next_item()";
          modes = [
            "i"
            "s"
          ];
        };
      };
      snippet.expand = "luasnip";
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

