{
  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
      gamescopeSession.enable = true;
    };

    gamescope = {
      enable = true;
      args = [
        "--prefer-output DP-4"
        "-W2560 -H1440 -r360"
        "-f"
        "--force-grab-cursor"
        "--mouse-sensitivity 1.5"
      ];
    };
    gamemode.enable = true;
  };
}
