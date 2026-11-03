{ pkgs, ... }:

{
  services.hardware.openrgb.enable = true;

  programs = {
    zsh.enable = true;
    niri.enable = true;

    appimage = {
      enable = true;
      binfmt = true;
    };
  };

  environment.systemPackages = with pkgs; [
    xwayland-satellite # xwayland support
    python3 # for appimage
  ];

  virtualisation.docker.enable = true;
}
