{ pkgs, ... }:
{
	fonts = {
		packages = with pkgs; [ 
			monaspace
			fira-code
			fira-code-symbols
			mplus-outline-fonts.githubRelease
			dina-font
			proggyfonts
			# monaspace not in 23.11
			(nerdfonts.override { fonts = [ "IntelOneMono" "FiraCode" "DroidSansMono" ]; })
		];

		fontconfig = {
			defaultFonts = {
				monospace = [ "'Monaspace Argon'" ];
			};
		};
	};
}
