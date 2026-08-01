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
              start = ["media"];
              center = ["clock"];
              end = ["tray" "notifications" "clipboard" "volume" "control-center" "session"];
            };
          };
        };

        wallpaper = {
          enabled = true;
          fill_mode = "crop";
          per_monitor_directories = true;
          monitor."DP-4" = {
            enabled = true;
            directory = ./assets/wallpapers/main;
          };
          monitor."DP-6" = {
            enabled = true;
            directory = ./assets/wallpapers/secondary;
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
