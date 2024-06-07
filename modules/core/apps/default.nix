{ pkgs, ... }:
{
	
	environment.systemPackages = with pkgs; [ 
		firefox
		bitwarden
		thunderbird
		protonvpn-gui
		protonmail-bridge
		discord
		spotify
		vlc
		dropbox

		vscode
		alacritty

		# steam


		# desktop/boot utilities
		os-prober
		gparted
	];

}
