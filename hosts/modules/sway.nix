{
  pkgs,
  ...
}:{
  services.displayManager = {
    defaultSession = "sway";
    sessionPackages = [pkgs.sway];
  };
  programs.sway = {
    enable = true;
  };
}
