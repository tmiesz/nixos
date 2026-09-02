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

  programs.direnv = {
    enable = true;
    silent = false;
    loadInNixShell = true;
    nix-direnv = {
      enable = true;
    };
  };

}
