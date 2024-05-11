{
  config,
  pkgs
}:
{
	enable = true;
	settings = {
		add_newline = false;
		character = {
			success_symbol = "[➜](bold green)";
		};
	};
}

