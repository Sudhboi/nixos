{
  description = "My Third? Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
      zen-browser,
      niri,
      ...
    }:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        laptop = lib.nixosSystem {
          inherit system;
          modules = [ ./system/laptop/configuration.nix ];
          specialArgs = { inherit inputs; };
        };
      };
      homeConfigurations = {
        sudhirk = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./users/sudhirk/home.nix ];
          extraSpecialArgs = { inherit inputs; };
        };
      };
    };
}
