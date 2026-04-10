{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nodejs_22
    dotnet-sdk_10
  ];
}
