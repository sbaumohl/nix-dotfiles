{ pkgs, ... }:
{
	imports = [
		./programs		

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
	];

}
