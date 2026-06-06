{
  description = "My NixOS systems";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
  };

  outputs = {
    self,
      nixpkgs,
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
