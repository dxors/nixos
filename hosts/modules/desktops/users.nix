{
  ### Make admin user on desktops
  users.users.xors = {
    extraGroups = [
      "networkmanager"
      "users"
      "wheel"
    ];
  };
} 
