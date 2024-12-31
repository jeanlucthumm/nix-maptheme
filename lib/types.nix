{lib, ...}: {
  options = {
    base16option = lib.mkOption {
      type = lib.types.attrs;
      description = "base16.nix color scheme generated with base16.lib.mkSchemeAttrs";
    };
  };
}
