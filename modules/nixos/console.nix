{
  config,
  lib,
  ...
}: let
  slib = import ../../lib/types.nix {inherit lib;};
in {
  options.maptheme.console = {
    enable = lib.mkEnableOption "console colors";
    colors = slib.options.base16option;
  };

  config = lib.mkIf config.maptheme.console.enable {
    console.colors = with config.maptheme.console.colors; [
      base00
      red
      green
      yellow
      blue
      magenta
      cyan
      base05
      base03
      red
      green
      yellow
      blue
      magenta
      cyan
      base06
    ];
  };
}
