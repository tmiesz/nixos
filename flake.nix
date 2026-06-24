{
  description = "wiqht nix flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvf.url = "github:notashelf/nvf";
    mnw.url = "github:Gerg-L/mnw";
    # TODO: encryption
    # sops-nix = {
    #   url = "github:mic92/sops-nix";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    # OR AGENIX !!
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      nvf,
      mnw,
      ...
    }:
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        modules = [
          ./configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.wiqht = import ./home.nix;
          }

          nvf.nixosModules.default

          mnw.nixosModules.mnw
        ];
      };
    };
}
