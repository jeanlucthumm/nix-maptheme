# This module provides a function to create a module option for an attribute set of base16 colors.
# All the program specific modules should use this to define their interface.
{lib}:
with lib; {
  mkColorsOption = description:
    mkOption {
      type = with types; attrsOf (coercedTo str (removePrefix "#") str);
      description = description;
    };
}
