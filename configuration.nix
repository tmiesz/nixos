{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports =
    builtins.filter (lib.hasSuffix ".nix") (lib.filesystem.listFilesRecursive ./modules/system)
    ++ [ ./hardware-configuration.nix ];

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager = {
    sddm.enable = true;
  };
  services.desktopManager.plasma6.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  users.users.wiqht = {
    isNormalUser = true;
    description = "wiqht";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = [
      pkgs.kdePackages.kate
    ];
  };

  system.stateVersion = "25.11";
}
