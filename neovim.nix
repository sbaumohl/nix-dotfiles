{
  config,
  pkgs
}:

let
	
in {
	viAlias = true;
	vimAlias = true;
	enable = true;
	extraConfig = ''
		:luafile ./nvim/init.lua"
	'';

	plugins = with pkgs.vimPlugins; [
		# packer-nvim
		nvim-lspconfig
		nvim-treesitter.withAllGrammars
	];
	

}

