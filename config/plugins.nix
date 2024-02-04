{
  plugins = {
    
    # Tabs for buffers
    bufferline.enable = true;

    # Tree file manager
    # chadtree.enable = true;

    # Syntax highlighting
    treesitter.enable = true;

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
    };

    # Better file explorer
    nvim-tree = {
      enable = true;
      autoClose = true;
      actions.openFile.quitOnOpen = true;
      autoReloadOnWrite = true;
      openOnSetup = true;
      hijackNetrw = true;
      hijackCursor = true;
      git = {
        enable = true;
        ignore = true;
      };
    };
  };
}

