{ home-manager, username, ... }:

{
	home-manager.users.${username} = {
		programs.starship = {
			enable = true;
			
			settings = {
				add_newline = false;
				character = {
					success_symbol = "[➜](bold green)";
				};
			};

		};
	};

}
