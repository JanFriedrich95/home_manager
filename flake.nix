{
  description = "Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let arch = "x86_64-linux";
    pkgs = import nixpkgs {
      config.allowUnfree = true;
      system =arch;
    };
    in {
      defaultPackage.${arch} = home-manager.defaultPackage.${arch};

      homeConfigurations.jan =
        home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
          modules = [ ./home.nix ];
        };
    };
}
