{
  description = "wiqht os";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    mnw = {
      url = "github:Gerg-L/mnw";
    };

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

          mnw.nixosModules.mnw
        ];
      };
    };
}
