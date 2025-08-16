
{ config, pkgs, ... }:

{
  # This block assumes you are using nix-darwin.
  # It changes the default screenshot location on macOS.
  system.defaults = {
    NSGlobalDomain = {
      "AppleShowAllExtensions" = true; # Example: show all file extensions
    };
    screencapture = {
      location = "~/Screenshots";
      type = "png";
      disable-shadow = true;
    };
  };
}
