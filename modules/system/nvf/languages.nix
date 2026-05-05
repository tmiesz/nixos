{
  vim = {
    lsp = {
      enable = true;
      presets.tailwindcss-language-server.enable = true;
    };

    languages = {
      enableFormat = true;
      enableTreesitter = true;
      nix.enable = true;
      typescript.enable = true;
      csharp.enable = true;
      json.enable = true;
    };
  };
}
