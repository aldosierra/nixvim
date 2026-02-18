{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>sf" = {
        action = "find_files";
        options.desc = "[S]earch [F]iles";
      };
      "<leader>sg" = {
        action = "live_grep";
        options.desc = "[S]earch live [G]rep";
      };
      "<leader>ss" = {
        action = "grep_string";
        options.desc = "[S]earch grep [S]tring";
      };
      "<leader>sb" = {
        action = "buffers";
        options.desc = "[S]earch [B]uffers files";
      };
      "<leader>sh" = {
        action = "help_tags";
        options.desc = "[S]earch [H]elp tags";
      };
      "<leader>sp" = {
        action = "git_files";
        options.desc = "[S]earch [P]roject (git) files";
      };
      "<leader>sm" = {
        action = "man_pages";
        options.desc = "[S]earch [M]an pages";
      };
    };
    extensions.fzf-native.enable = true;
  };
}
