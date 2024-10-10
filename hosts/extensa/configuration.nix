{ 
  inputs,
  ...
}:{
  imports =
    [ # Include the results of the hardware scan.
      ./disko.nix
      ./hardware-configuration.nix
      ./services
      ../modules/common
      ../modules/desktops
      ../modules/boot.nix
      ../modules/power.nix
      ../modules/sddm.nix
      ../../home-manager/home-manager.nix
      inputs.home-manager.nixosModules.home-manager
      inputs.catppuccin.nixosModules.catppuccin
      inputs.disko.nixosModules.disko
    ];

  home-manager.users.xors = {
    imports = [
      inputs.sops-nix.homeManagerModule
      ../../home-manager/extensa.nix
    ];
  };

  networking.hostName = "extensa";

  # Swap (zram)
  zramSwap.enable = true;

  security.polkit.enable = true;

  system.stateVersion = "24.05";
}
