{
  description = "A resusable NixOS module system for mapping base16/24 colors to program-specific configurations";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: {
        nixosModules.maptheme = ./maptheme/nixos;
      }
    );
}
