homeManagerModule: {
  lib,
  config,
  options,
  ...
}: {
  options.maptheme.homeManagerIntegration = {
    autoImport = lib.mkOption {
      description = "Whether to import maptheme automatically for every Home Manager user.";
      type = lib.types.bool;
      default = true;
      example = false;
    };
  };

  config =
    lib.optionalAttrs (options ? home-manager)
    (lib.mkIf config.maptheme.homeManagerIntegration.autoImport {
      home-manager.sharedModules = [homeManagerModule];
    });
}
