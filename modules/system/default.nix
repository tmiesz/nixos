{ ... }:

{
  services.hardware.openrgb.enable = true;

  programs = {
    steam.enable = true;
    gamemode.enable = true;
    zsh.enable = true;

    niri.enable = true;
    niri.useNautilus = true;
  };
}
