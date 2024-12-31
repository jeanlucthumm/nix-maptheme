{
  config,
  lib,
  ...
}: let
  slib = import ../../../lib/types.nix {inherit lib;};
in {
  options.maptheme.bat = {
    enable = lib.mkEnableOption "bat colors";
    colors = slib.options.base16option;
  };

  config = lib.mkIf config.maptheme.bat.enable {
    programs.bat = {
      # This theme is reused for yazi. Changes to the template
      # will need to be applied to modules/yazi/hm.nix
      themes."base16-maptheme".src = config.maptheme.bat.colors {
        template = ./base16-maptheme.mustache;
        extension = ".tmTheme";
      };

      config.theme = "base16-maptheme";
    };
  };
}
