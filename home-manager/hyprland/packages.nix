{
  pkgs,
  ...
}:{
  home.packages = with pkgs; [
    brightnessctl
    fuzzel
    grim
    j4-dmenu-desktop
    networkmanager_dmenu
    pavucontrol
    playerctl
    rofi-wayland
    shotman
    slurp
    swayimg
    wdisplays
    wofi
  ];
}