{
  xdg.configFile."niri/config.kdl".text = ''
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
      gaps 6

      focus-ring {
        width 3
        active-color "#A8AEFF"
        inactive-color "#505050"
      }
    }

    gestures {
      hot-corners {
        // off
        // top-left
        top-right
        // bottom-left
        // bottom-right
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
      // Mod+H { focus-column-left; }
      // Mod+L { focus-column-right; }
      Mod+H { focus-column-or-monitor-left; }
      Mod+L { focus-column-or-monitor-right; }
      Mod+K { focus-window-up; }
      Mod+J { focus-window-down; }

      Pause { spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle"; }
    }
  '';
}
