{
  description = "My NixOS systems";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    home-manager.url = "github:nix-community/home-manager/release-26.05?follows=nixpkgs";
  };

  outputs = {
    self,
      nixpkgs,
      home-manager,
      ...
  } @ inputs:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations = {
        T440 = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            home-manager.nixosModules.home-manager
            ./configuration.nix
          ];
        };
      };
      devShells.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = [
          nixpkgs.legacyPackages.x86_64-linux.nixos-rebuild
        ];
      };
    };
}
