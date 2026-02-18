{
  plugins.which-key = {
    enable = true;
    settings = {
      spec = [
        { __unkeyed-1 = "<leader>c"; group = "[C]ode"; mode = [ "n" "x" ]; }
        { __unkeyed-1 = "<leader>d"; group = "[D]ocument"; }
        { __unkeyed-1 = "<leader>r"; group = "[R]ename"; }
        { __unkeyed-1 = "<leader>s"; group = "[S]earch"; }
        { __unkeyed-1 = "<leader>w"; group = "[W]orkspace"; }
        { __unkeyed-1 = "<leader>t"; group = "[T]oggle"; }
        { __unkeyed-1 = "<leader>g"; group = "[G]itsigns"; }
        { __unkeyed-1 = "<leader>h"; group = "Git [H]unk"; mode = [ "n" "v" ]; }
      ];
    };
    luaConfig.post = /*lua*/''
      local which_show = function()
        require("which-key").show({ global = false })
      end

      vim.keymap.set("n", "<leader>?", which_show, { desc = "Buffer Local Keymaps (which-key)" })
    '';
  };
}
