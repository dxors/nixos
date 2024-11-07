{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    # Terminal tools  
    atool
    bottom
    dua
    eternal-terminal
    fd
    ripgrep
    stow
    unzip
    # Terminal applications
    home-manager
    ranger
    vim-full # TODO
    # Development tools
    alejandra
    highlight
    tig
    # Gui applications
    alacritty
    dmenu
    gnome.simple-scan
    imv
    mpv
    pinentry-qt
    ungoogled-chromium
    wl-clipboard
    zathura
  ];
}
