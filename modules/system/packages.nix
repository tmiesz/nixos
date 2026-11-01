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
  ];

  virtualisation.docker.enable = true;
}
