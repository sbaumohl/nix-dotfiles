{ pkgs, ... }:
{
	imports = [
		./programs
		./fonts
	];


	environment.systemPackages = with pkgs; [
		wget
		curl
		tmux # terminal multiplexer
		git
		gh # github git cli
		fastfetch # like neofetch but BLAZINGLY FAST
		tree # visualize dir structures
		unzip # zip file util
		dnsutils # networking utils
		gnumake42 # make tools
		cmake # more make tools
		htop # task manager
		fd # find 
		imagemagick # image manioulation commands

		# global runtimes and environments
		python310
		cargo # rust
		rustup # also rust
		texliveMedium # latex tools

	];

	programs = {
		zsh.enable = true;

		neovim = {
			enable = true;
			defaultEditor = true;
			viAlias = true;
			vimAlias = true;
		};
	};


	users.defaultUserShell = pkgs.zsh;


}
