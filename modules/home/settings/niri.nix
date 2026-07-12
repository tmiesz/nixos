{ ... }:

{
  xdg.configFile."niri/config.kdl".text = ''
    output "DP-6" {
      mode "1920x1080@143.614"
      transform "90"
      position x=0 y=0
      scale 1
    }

    output "DP-4" {
      mode "2560x1440@360.001"
      position x=1080 y=0
      scale 1
    }
  '';
}
