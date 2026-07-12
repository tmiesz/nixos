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

            monitor."DP-4" = {
              match = "DP-4";
              enabled = false;
            };
          };
        };

        wallpaper = {
          enabled = true;
          default.path = ./assets/wallpapers/pinkish-girl.png;
        };
      };
    };
  };
}
