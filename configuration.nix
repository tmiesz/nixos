{
  pkgs,
  lib,
  ...
}:

{
  imports =
    builtins.filter (lib.hasSuffix ".nix") (lib.filesystem.listFilesRecursive ./modules/system)
    ++ [ ./hardware-configuration.nix ];

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.hardware.openrgb.enable = true;

  # niri noctalia placeholders
  # -------------------------------------------------

  programs.niri.enable = true;
  programs.niri.useNautilus = true;

  services.displayManager = {
    sddm.enable = true;
    defaultSession = "niri";
  };

  environment.systemPackages = with pkgs; [
    xwayland-satellite # xwayland support
  ];

  networking.networkmanager.enable = true;
  hardware.bluetooth.enable = true;
  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;

  # -------------------------------------------------

  users.users.wiqht = {
    isNormalUser = true;
    description = "wiqht";
    shell = pkgs.zsh;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  system.stateVersion = "25.11";
}
