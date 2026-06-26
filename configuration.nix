{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/system/audio.nix
    ./modules/system/graphics.nix
    ./modules/system/programs.nix
    ./modules/system/system.nix
  ];

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
