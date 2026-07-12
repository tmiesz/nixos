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

        wallpaper = {
          enabled = true;
          default.path = ./assets/wallpapers/pinkish-girl.png;
        };
      };
    };
  };
}
