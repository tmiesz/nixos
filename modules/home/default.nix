{ pkgs, lib, ... }:

{
  imports = builtins.filter (lib.hasSuffix ".nix") (lib.filesystem.listFilesRecursive ./settings);

  programs = {
    mpv.enable = true;
    librewolf.enable = true;
    obsidian.enable = true;
    ssh.enable = true;
    git.enable = true;
    zed-editor.enable = true;
    foot.enable = true;
    zsh.enable = true;
    starship.enable = true;
    nix-your-shell.enable = true;
    zoxide.enable = true;
    neovim.enable = true;
    doom-emacs.enable = true;
    discord.enable = true;
  };

  home.packages = with pkgs; [
    spotify
    netflix
    liquidctl # rgb control

    # development
    nixd # nix language server
    nixfmt # nix code formatter
    lua-language-server
    jujutsu # source control
    godot

    dotnet-sdk
    roslyn-ls # csharp language server
    netcoredbg # csharp debugger
  ];
}
