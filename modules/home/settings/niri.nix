{
  xdg.configFile."niri/config.kdl".text = ''
    include "animations.kdl"
    include "binds.kdl"
    include "debug.kdl"
    include "gestures.kdl"
    include "input.kdl"
    include "layerrule.kdl"
    include "layout.kdl"
    include "output.kdl"
    include "recentwindows.kdl"
    include "switchevents.kdl"
    include "toplevel.kdl"
    include "windowrule.kdl"
  '';

  xdg.configFile."niri/animations.kdl".source = ./niri/animations.kdl;
  xdg.configFile."niri/binds.kdl".source = ./niri/binds.kdl;
  xdg.configFile."niri/debug.kdl".source = ./niri/debug.kdl;
  xdg.configFile."niri/gestures.kdl".source = ./niri/gestures.kdl;
  xdg.configFile."niri/input.kdl".source = ./niri/input.kdl;
  xdg.configFile."niri/layerrule.kdl".source = ./niri/layerrule.kdl;
  xdg.configFile."niri/layout.kdl".source = ./niri/layout.kdl;
  xdg.configFile."niri/output.kdl".source = ./niri/output.kdl;
  xdg.configFile."niri/recentwindows.kdl".source = ./niri/recentwindows.kdl;
  xdg.configFile."niri/switchevents.kdl".source = ./niri/switchevents.kdl;
  xdg.configFile."niri/toplevel.kdl".source = ./niri/toplevel.kdl;
  xdg.configFile."niri/windowrule.kdl".source = ./niri/windowrule.kdl;
}
