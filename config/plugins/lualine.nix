let
  colors = {
    blue   = "#80a0ff";
    cyan   = "#79dac8";
    black  = "#080808";
    white  = "#c6c6c6";
    red    = "#ff5189";
    violet = "#d183e8";
    grey   = "#303030";
  };
in
{
  plugins.lualine = {
    enable = true;
    settings = {
      globalstatus = true;
      iconsEnabled = true;
      theme = {
        normal = {
          a = { fg = colors.black; bg = colors.blue; };
          b = { fg = colors.white; bg = colors.black; };
          c = { fg = colors.white; };
        };
        insert = { a = { fg = colors.black; bg = colors.cyan; }; };
        visual = { a = { fg = colors.black; bg = colors.violet; }; };
        replace = { a = { fg = colors.black; bg = colors.red; }; };
        inactive = {
          a = { fg = colors.white; bg = colors.black; };
          b = { fg = colors.white; bg = colors.black; };
          c = { fg = colors.white; };
        };
      };
      componentSeparators = {
        left = "";
        right = "";
      };
      sectionSeparators = {
        left = "";
        right = "";
      };
      sections = {
        lualine_a = [ { __unkeyed-1 = "mode"; separator.left = ""; padding = {right = 2; left = 1; }; } ];
        lualine_b = [ "filename" "branch" ];
        lualine_c = [ "%=" ];
        lualine_x = [ "%=" ];
        lualine_y = [ "filetype" "progress" ];
        lualine_z = [ { __unkeyed-2 = "location"; separator.right = ""; padding = {left = 2; right = 1; }; } ];
      };
      inactiveSections = {
        lualine_a = null;
        lualine_b = null;
        lualine_c = null;
        lualine_x = null;
        lualine_y = null;
        lualine_z = null;
      };
    };
  };
}
