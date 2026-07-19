{
  pkgs,
  lib,
  ...
}:

{
  imports =
    builtins.filter (lib.hasSuffix ".nix") (lib.filesystem.listFilesRecursive ./modules/system)
    ++ [ ./hardware-configuration.nix ];

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.displayManager = {
    sddm.enable = true;
    defaultSession = "niri";
  };

  environment.systemPackages = with pkgs; [
    xwayland-satellite # xwayland support
  ];

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
