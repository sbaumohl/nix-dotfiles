{
  config,
  pkgs
}:
{
    	enable = true;
	enableCompletion = true;
    	enableAutosuggestions = true;
	syntaxHighlighting.enable = true;
	shellAliases = {
		ll = "ls -l";
		update = "sudo nixos-rebuild switch";
		clean = "nix store gc";
	};
	history.size = 10000;
	history.path = "${config.xdg.dataHome}/zsh/history";

	oh-my-zsh = {
		enable = true;
		plugins = [ "git" "rust" "sudo" "copypath" "copybuffer" "jsontools" "starship"];
		# theme = "robbyrussell";
	};

}
