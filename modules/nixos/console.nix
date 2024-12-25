{
  config,
  lib,
  ...
}: let
  slib = import ../../lib/types.nix {inherit lib;};
in {
  options.maptheme.console = {
    enable = lib.mkEnableOption "console colors";
    colors = lib.mkOption {
      type = slib.types.base16SchemeType;
      description = "base16 color scheme without '#'";
      example = ''
        {
          base00 = '00ff22';
          base01 = '3547f8';
          # ...
        }
      '';
    };
  };

  config = lib.mkIf config.maptheme.console.enable {
    console.colors = with config.maptheme.console.colors; [
      base00 # black
      base08 # red
      base0B # green
      base0A # yellow
      base0D # blue
      base0E # magenta
      base0C # cyan
      base05 # white
      base03 # bright black
      base08 # bright red
      base0B # bright green
      base0A # bright yellow
      base0D # bright blue
      base0E # bright magenta
      base0C # bright cyan
      base07 # bright white
    ];
  };
}
