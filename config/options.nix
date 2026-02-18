{
  # Enable wayland clipboard
  config.clipboard.providers.wl-copy.enable = true;

  # Set colorscheme
  config.colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
      term_colors = true;
    };
  };

  config.opts = {
    # Tabs
    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;
    autoindent = true;
    expandtab = true;
    smarttab = true;
    # Mouse
    mouse = "a";
    # Line number
    number = true;
    relativenumber = true;
    scrolloff = 2;
    # Search
    ignorecase = true;
    smartcase = true;
    showmatch = true;
    # Sign column
    signcolumn = "yes";
    # Split windows
    splitbelow = true;
    splitright = true;
    # Fold options
    foldlevelstart = 99;
    # Disable showmode
    showmode = false;
    # Enable undo file
    undofile = true;
    # Update time
    updatetime = 250;
    # Foat windows border
    winborder = "bold";
    # Preview substitutions live
    inccommand = "split";
    # Display whitspaces
    list = false;
    listchars = {
      tab = "» ";
      trail = "·";
      nbsp = "␣";
    };
  };
}
