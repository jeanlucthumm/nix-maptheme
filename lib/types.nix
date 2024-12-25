{lib, ...}: let
  isValidHexColor = str:
    lib.isString str
    && builtins.match "^[0-9a-fA-F]{6}$" str != null;
in {
  types = {
    base16SchemeType = lib.types.attrsOf (lib.types.submodule {
      options = {
        base00 = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base01 = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base02 = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base03 = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base04 = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base05 = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base06 = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base07 = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base08 = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base09 = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base0A = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base0B = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base0C = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base0D = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base0E = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
        base0F = lib.mkOption {
          type = lib.types.str;
          check = isValidHexColor;
        };
      };
    });
  };
}
