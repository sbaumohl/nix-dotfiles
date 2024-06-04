{ pkgs, home-manager, username, ... }:
{
	home-manager.users.${username} = { pkgs, ... }:
	{
		
		home.file."./.config/nvim/" = {
			source = ./nvim;
			recursive = true;
		};

		programs.neovim = {
			enable = true;
			viAlias = true;
			vimAlias = true;

			plugins = with pkgs.vimPlugins; [
				# completiton
				nvim-cmp
				cmp-nvim-lsp
				cmp-nvim-lua
				cmp-nvim-lsp-signature-help
				cmp-vsnip
				cmp-path
				cmp-buffer
				vim-vsnip
				cmp-buffer
				cmp-cmdline

				# lsp
				nvim-lspconfig

				# commenting plugin
				vim-commentary

				nvim-treesitter.withAllGrammars
				nvim-lint
				clangd_extensions-nvim
				luasnip
				cmp_luasnip
				lspkind-nvim
				nvim-lint
				vim-surround
				vim-obsession
				lazygit-nvim
				gitsigns-nvim
				rainbow
				vim-sleuth
				lualine-nvim
				nvim-web-devicons
				leap-nvim
				vim-repeat
				vim-nix
				fidget-nvim
				formatter-nvim

				# harpoon! -- good for switching between buffers and running commands
				harpoon
			];
		};
	};
}
