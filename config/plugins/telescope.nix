{
  plugins.telescope = {
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
}
