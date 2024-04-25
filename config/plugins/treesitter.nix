{
  plugins = {
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
  };
}
