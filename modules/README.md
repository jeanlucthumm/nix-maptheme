Per-program theme modules go into the folder whose settings they affect, e.g. if it's a NixOS configuration, it goes into `nixos/`.

TODO: Figure out how to handle modules that exist in both HomeManager and NixOS without duplicating the code.

### Writing per-program modules

Each module should define an `enable` and `colors` option. The type of `colors` is standardized in the `lib/types.nix` file. This is the same type that `base16.nix` exposes so the same colors (`base**`, `cyan`, etc) and functions (e.g. `withHashtags`) should be available.
