{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-wsl.url = "github:nix-community/NixOS-WSL/main";
    home-manager = {
    	url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixos-wsl, home-manager, ... }@inputs: 
  let 
  	pkgs = nixpkgs.legacyPackages.x86_64-linux;
	username = "nixos";
  in {
	nixosConfigurations = {
		nixos = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit username; };
			modules = [
		  		nixos-wsl.nixosModules.default
		  		home-manager.nixosModules.home-manager
		  		./modules
		  		{
		    			system.stateVersion = "24.05";
		    			wsl.enable = true;
					
					home-manager.users.${username} = {
						home.stateVersion = "24.05";
					};
			
		    			# programs.neovim.enable = true;
		  		}
			];
	      };
    	};
    
  };
}
