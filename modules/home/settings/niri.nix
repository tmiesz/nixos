{
  xdg.configFile."niri/config.kdl".text = ''
      prefer-no-csd

      output "DP-6" {
        mode "1920x1080@143.614"
          transform "90"
          position x=0 y=-768
          scale 1
      }

    output "DP-4" {
      mode "2560x1440@360.001"
        position x=1080 y=0
        scale 1.25
    }

    layout {
      gaps 5

        focus-ring {
          width 3
            active-color "#A8AEFF"
            inactive-color "#505050"
        }

      border {
        off
      }

    }

    gestures {
      hot-corners {
        off
        //top-left
        //top-right
        //bottom-left
        //bottom-right
      }
    }

    spawn-at-startup "spotify"
      spawn-at-startup "discord"

      binds {
        // Apps
        Mod+D { spawn "noctalia" "msg" "panel-toggle" "launcher"; }
        Mod+E { spawn "nautilus"; }
        Mod+Return { spawn "foot"; }

        // Windows
        Mod+Q { close-window; }
        Mod+F { maximize-column; }
        Mod+Shift+F { fullscreen-window; }
        Mod+M { maximize-window-to-edges; }

        // Focus
        Mod+H { focus-column-or-monitor-left; }
        Mod+L { focus-column-or-monitor-right; }
        Mod+K { focus-window-up; }
        Mod+J { focus-window-down; }

        Mod+Ctrl+H { move-column-left-or-to-monitor-left; }
        Mod+Ctrl+L { move-column-right-or-to-monitor-right; }
        Mod+Ctrl+K     { move-window-up; }
        Mod+Ctrl+J     { move-window-down; }

        Mod+1 { focus-workspace 1; }
        Mod+2 { focus-workspace 2; }
        Mod+3 { focus-workspace 3; }
        Mod+4 { focus-workspace 4; }
        Mod+5 { focus-workspace 5; }
        Mod+6 { focus-workspace 6; }
        Mod+7 { focus-workspace 7; }
        Mod+8 { focus-workspace 8; }
        Mod+9 { focus-workspace 9; }
        Mod+Shift+1 { move-column-to-workspace 1; }
        Mod+Shift+2 { move-column-to-workspace 2; }
        Mod+Shift+3 { move-column-to-workspace 3; }
        Mod+Shift+4 { move-column-to-workspace 4; }
        Mod+Shift+5 { move-column-to-workspace 5; }
        Mod+Shift+6 { move-column-to-workspace 6; }
        Mod+Shift+7 { move-column-to-workspace 7; }
        Mod+Shift+8 { move-column-to-workspace 8; }
        Mod+Shift+9 { move-column-to-workspace 9; }


        Print { screenshot; }
        Ctrl+Print { screenshot-screen; }
        Alt+Print { screenshot-window; }

        Pause { spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle"; }
      }
  '';
}
