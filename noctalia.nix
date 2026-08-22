{ inputs, ... }:

{
  home-manager.users.wiqht = {
    imports = [
      inputs.noctalia.homeModules.default
    ];

    programs.noctalia = {
      enable = true;
      systemd.enable = true;

      settings = {
        theme = {
          mode = "dark";
          source = "builtin";
          builtin = "Catppuccin";
        };

        bar = {
          main = {
            enabled = true;

            monitor."main" = {
              match = "DP-4";
              enabled = false;
              auto_hide = true;
              reserve_space = false;
            };

            monitor."secondary" = {
              match = "DP-6";
              enabled = true;
              auto_hide = false;
              margin_ends = 15;
              start = [ "media" ];
              center = [ "clock" ];
              end = [
                "tray"
                "notifications"
                "clipboard"
                "volume"
                "control-center"
                "session"
              ];
            };
          };
        };

        shell.launcher = {
            categories = false;
            compact = false;
        };

        wallpaper = {
          enabled = true;

          fill_mode = "crop";
          fill_color = "#111111";

          transition = [
            "fade"
            "wipe"
            "disc"
            "stripes"
            "zoom"
            "honeycomb"
          ];

          transition_duration = 1500;
          edge_smoothness = 0.3;
          transition_on_startup = false;

          directory = ./assets/wallpapers;
          directory_light = ./assets/wallpapers;
          directory_dark = ./assets/wallpapers;

          per_monitor_directories = true;

          animations = {
            enabled = false;
            interval_seconds = 1800;
            order = "random";
            recursive = true;
          };

          monitor = {
            "DP-4" = {
              enabled = true;
              fill_color = "#111111";

              directory = ./assets/wallpapers/main;
              directory_light = ./assets/wallpapers/main;
              directory_dark = ./assets/wallpapers/main;
            };

            "DP-6" = {
              enabled = true;
              fill_color = "#111111";

              directory = ./assets/wallpapers/secondary;
              directory_light = ./assets/wallpapers/secondary;
              directory_dark = ./assets/wallpapers/secondary;
            };
          };
        };

        # Backdrop for overview
        backdrop = {
          enabled = true;
          blur_intensity = 0.5;
          tint_intensity = 0.3;
        };

        osd = {
          kinds = {
            media = false;
          };
        };

        lockscreen = {
          enabled = true;
        };

        idle = {
          behavior = {
            screen_off = {
              enabled = true;
              action = "screen_off";
              timeout = 600;
            };
            lock = {
              enabled = true;
              action = "lock";
              timeout = 1500;
            };
          };
        };

      };
    };
  };
}
