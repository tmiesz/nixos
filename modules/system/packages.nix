{ pkgs, ... }:

{
  services.hardware.openrgb.enable = true;

  programs = {
    zsh.enable = true;
    niri.enable = true;
  };

  environment.systemPackages = with pkgs; [
    xwayland-satellite # xwayland support
  ];
}
