{
  description = "System configurations";

  inputs = {
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    catppuccin.url = "github:catppuccin/nix";

    cursor.url = "github:omarcresp/cursor-flake/main";
  };

  outputs = inputs@{
    self,
    disko,
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    catppuccin,
    ...
  }: let
    inherit (self) outputs;
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      laptop = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs outputs;
        };
        modules = [
          ./hosts/laptop/configuration.nix
        ];
      };
    };
  }; 
}
