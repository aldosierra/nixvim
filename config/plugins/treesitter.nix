{ pkgs, ... }:
{
  plugins = {
    # Syntax highlighting
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
      folding.enable = true;
      nixvimInjections = true;
      nixGrammars = true;
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
	c
	go gomod gosum
	html css javascript json
	python
	bash
        lua
        make
        markdown
        nix
        regex
        toml
        vim vimdoc
        xml
        yaml
      ];
    };

    # Autotag
    ts-autotag.enable = true;
  };
}
