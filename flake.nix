{
  description = "A resusable NixOS module system for mapping base16 colors to program-specific configurations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            statix # Nix linter
            alejandra # Nix formatter
            nil # Nix LSP
          ];
        };
        formatter = pkgs.alejandra;
      }
    )
    // {
      nixosModules.maptheme = import ./modules/core/nixos.nix ./modules/core/home-manager.nix;
      darwinModules.maptheme = import ./modules/core/darwin.nix ./modules/core/home-manager.nix;
      homeManagerModules.maptheme = import ./modules/core/home-manager.nix;
    };
}
