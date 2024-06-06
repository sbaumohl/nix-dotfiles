{ username, ... }:
{

	home-manager.users.${username} = {
		programs.zsh = {
			enable = true;
			enableCompletion = true;
			autosuggestion.enable = true;
			syntaxHighlighting.enable = true;
			shellAliases = {
				ll = "ls -l";
				update = "sudo nixos-rebuild switch";
				clean = "nix store gc";
			};
			history.size = 10000;
			# history.path = "${config.xdg.dataHome}/zsh/history";

			oh-my-zsh = {
				enable = true;
				plugins = [ "starship"];
				# plugins = [ "git" "rust" "sudo" "copypath" "copybuffer" "jsontools" ];
				theme = "robbyrussell";
			};
		};

	};

}
