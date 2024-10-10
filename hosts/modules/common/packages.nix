{
  pkgs,
  ...
}:{
  # General systemwide packages
  environment.systemPackages = with pkgs; [
    bottom
    curl
    dua
    fd
    curl
    git
    jq
    nix-tree
    ranger
    ripgrep
    rsync
    helix
    wget
  ];
} 
