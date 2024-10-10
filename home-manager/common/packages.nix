{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # Terminal tools
    atool
    bottom
    dua
    fd
    ripgrep
    stow
    udiskie
    unzip
    # Terminal applications
    bitwarden-cli
    home-manager
    mediainfo
    ranger
    tabview
    helix
    # Development tools
    tig
    # Gui applications
    alacritty
    inputs.bwm.packages.${pkgs.system}.default
    dmenu
    brave
    imv
    libreoffice
    mpv
    pinentry-qt
    inputs.urlscan.packages.${pkgs.system}.default
    wl-clipboard
    zathura
  ];
}
