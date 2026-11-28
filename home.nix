{
  imports = [ ./modules/home/default.nix ];

  home.username = "wiqht";
  home.homeDirectory = "/home/wiqht";

  home.stateVersion = "25.11";

  services.home-manager.autoUpgrade = {
    enable = true;
    useFlake = true;
    flakeDir = "/home/wiqht/nixos";

    frequency = "weekly";

    preSwitchCommands = [
      "nix flake update"
    ];
  };
}
