{lib, ...}: let
  prefixHash = color: "#${color}";
in {
  # Transform a base16 colors scheme without hashtags to one with a hashtags.
  withHashtags = lib.attrsets.mapAttrs (name: color: prefixHash color);
}
