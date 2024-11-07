# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ 
  inputs,
  ...
}:{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./services
      ../modules/common
      ../modules/desktops
      ../modules/boot.nix
      ../modules/power.nix
      ../modules/sddm.nix
      ../modules/sway.nix
      ../../home-manager/home-manager.nix
      inputs.home-manager.nixosModules.home-manager
      inputs.catppuccin.nixosModules.catppuccin
    ];

  home-manager.users.xors = {
    imports = [
      ../../home-manager/laptop.nix
    ];
  };

  networking.hostName = "laptop";

  # Swap (zram)
  zramSwap.enable = true;

  # Polkit - for home-manager sway
  security.polkit.enable = true;

  system.stateVersion = "24.05";
}