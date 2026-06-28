{
  programs.mnw = {
    initLua = ''
      require("myconfig")
    '';
    plugins.dev.myconfig.pure = ../nvim;
  };
}
