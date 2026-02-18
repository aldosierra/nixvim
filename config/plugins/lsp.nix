{ pkgs, ... }:
{
  plugins = {
    # Main lsp
    lsp = {
      enable = true;
      servers = {
        # Javascript / typescript server
        # ts_ls.enable = true;
        # Lua server
        lua_ls.enable = true;
        # Python server
        pyright.enable = true;
        # Nix server
        nil_ls.enable = true;
        # C/C++ server
        clangd.enable = true;
        # Bash server
        # bashls.enable = true;
        # Emmet server
        emmet_ls.enable = true;
        # HTML Server
        html.enable = true;
        # Markdown server
        marksman.enable = true;
        # Go server
        gopls.enable = true;
        # Json server
        jsonls.enable = true;
      };
      capabilities = /*lua*/ ''
         require("cmp_nvim_lsp").default_capabilities()
      '';
      postConfig = ''
        local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
        for type, icon in pairs(signs) do
          local hl = "DiagnosticSign" .. type
          vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end
      '';
      keymaps.extra = [
        { action = "<cmd>Lspsaga peek_definition<CR>"; key = "gd"; options.remap = false; }
        { action =  "<cmd>Lspsaga hover_doc<CR>"; key = "K"; options.remap = false; mode = "n"; }
        { action =  "<cmd>Lspsaga show_line_diagnostics<CR>"; key = "<leader>ld"; options.remap = false; }
        { action =  "<cmd>Lspsaga diagnostic_jump_next<CR>"; key = "<leader>["; options.remap = false; }
        { action =  "<cmd>Lspsaga diagnostic_jump_prev<CR>"; key = "<leader>]"; options.remap = false; }
        { action =  "<cmd>Lspsaga code_action<CR>"; key = "<leader>la"; options.remap = false; }
        { action =  "<cmd>Lspsaga finder<CR>"; key = "<leader>lf"; options.remap = false; }
        { action =  "<cmd>Lspsaga rename<CR>"; key = "<leader>lr"; options.remap = false; }
        { action =  "<cmd>Lspsaga outline<CR>"; key = "<leader>lo"; options.remap = false; }
        { action =  "<cmd>Lspsaga term_toggle<CR>"; key = "<leader>lt"; options.remap = false; }
        { action =  "vim.lsp.buf.format"; key = "<leader>lF"; options.remap = false; }
      ];
    };

    # Add symbols to lsp
    lspkind.enable = true;

    # Add lsp saga
    lspsaga = {
      enable = true;
      settings = {
        lightbulb.sign = false;
        outline.auto_close = true;
        codeAction.extend_git_signs = true;
      };
    };
  };
}
