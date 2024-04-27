{
  config,
  pkgs
}:{
	viAlias = true;
	vimAlias = true;
	enable = true;

	extraConfig = ''
		lua << EOF
		${builtins.readFile nvim/init.lua}
		${builtins.readFile nvim/lspconfig.lua}
		${builtins.readFile nvim/cmp.lua}
		${builtins.readFile nvim/formatter.lua}
	'';

	plugins = with pkgs.vimPlugins; [
	        nvim-cmp
		cmp-nvim-lsp
		cmp-buffer
		cmp-cmdline
		nvim-lspconfig
		nvim-treesitter.withAllGrammars
		nvim-lint
		clangd_extensions-nvim
		luasnip
		cmp_luasnip
		lspkind-nvim
		nvim-lint
		vim-surround
		vim-obsession
		kommentary
		lazygit-nvim
		gitsigns-nvim
		rainbow
		vim-sleuth
		lualine-nvim
		nvim-web-devicons
		lightspeed-nvim
		leap-nvim
		vim-repeat
		vim-nix
		fidget-nvim
		formatter-nvim
		pkgs.rust-analyzer
	];


}
