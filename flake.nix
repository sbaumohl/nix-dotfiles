{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-wsl.url = "github:nix-community/NixOS-WSL/main";
    home-manager = {
    	url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
    };
    vscode-server.url = "github:nix-community/nixos-vscode-server";
  };

  outputs = { self, nixpkgs, nixos-wsl, home-manager, vscode-server, ... }: 
  let 
  	pkgs = nixpkgs.legacyPackages.x86_64-linux;
	username = "nixos";
	version = "24.05";
	locale = "en_US.UTF-8";
  in {
	nixosConfigurations = {
		nixos = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit username locale; };
			modules = [
		  		nixos-wsl.nixosModules.default
		  		home-manager.nixosModules.home-manager
				vscode-server.nixosModules.default
		  		./modules
		  		{	
					# some important topline settings
					nix.settings.experimental-features = [ "nix-command" "flakes" ];
		    			system.stateVersion = version;
					
 					# hardware.nvidia.nvidiaSettings = true;
					# hardware.nvidia.enable = true;
					services.xserver.videoDrivers = ["nvidia"];
					nixpkgs.config.allowUnfree = true;
					nixpkgs.config.cudaSupport = true;
					# https://nixos.wiki/wiki/CUDA

					# WSL things
		    			wsl.enable = true;
					wsl.defaultUser = username;
					
					home-manager.users.${username} = {
						home.stateVersion = version;
					};

					services.vscode-server.enable = true;

					programs.nix-ld = {
    						enable = true;
    						package = pkgs.nix-ld-rs;
					};
  					programs.nix-ld.libraries = with pkgs; [
						# nvidia-smi
						stdenv.cc.cc.lib
  					];

					environment.systemPackages = with pkgs; [
						stdenv.cc.cc.lib
					];
		  		}
			];
	      };

	      sbaumohl-desktop = nixpkgs.lib.nixosSystem {
	        	system = "x86_64-linux";
			modules = [
				home-manager.nixosModules.home-manager
				./modules/core/apps
				./modules
				{
					nix.settings.experimental-features = [ "nix-command" "flakes" ];
					system.stateVersion = version;
				}
			];	

	      };
    	};
    
  };
}
