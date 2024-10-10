{
  config,
  ...
}:{
  # ENV variables

  home.sessionPath = [
    "$HOME/.local/bin"
    "/var/lib/flatpak/exports/bin"
  ];

  # Bash config
  sops.secrets.hcloud-token = {};
  programs.bash = {
    enable = true;
    enableCompletion = true;
    historyControl = ["ignoredups" "ignorespace"];
    profileExtra = ''
      systemctl --user import-environment DESKTOP_SESSION
      export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share
    '';
    shellAliases = {
      ".." = "cd ..";
    };
    initExtra = ''
      export HCLOUD_TOKEN=$(cat "$HOME/.config/sops-nix/secrets/hcloud-token")
    '';
  };

  ## Bat
  programs.bat = {
    enable = true;
  };

  ## Fzf
  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
    defaultCommand = "fd --type d --hidden --follow --exclude .git -E .vim -E .cache -E .nvm -E .cargo -E .local/src -E .local/srv/git -E .vscode-oss -E .local/lib -E .vagrant.d -E .local/share/containers -E .nix-defexpr -E .nix-profile -E .local/state";
    changeDirWidgetCommand = "fd --type d --hidden --follow --exclude .git -E .vim -E .cache -E .nvm -E .cargo -E .local/src -E .local/srv/git -E .vscode-oss -E .local/lib -E .vagrant.d -E .local/share/containers -E .nix-defexpr -E .nix-profile -E .local/state";
    fileWidgetCommand = "fd --type d --hidden --follow --exclude .git -E .vim -E .cache -E .nvm -E .cargo -E .local/src -E .local/srv/git -E .vscode-oss -E .local/lib -E .vagrant.d -E .local/share/containers -E .nix-defexpr -E .nix-profile -E .local/state";
    tmux.enableShellIntegration = true;
    tmux.shellIntegrationOptions = ["-d 40%"];
  };

  ## Starship
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
  };
}
