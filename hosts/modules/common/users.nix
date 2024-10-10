{
  users.users.root = {
    ## hash: mkpasswd -m SHA-512 -s
    initialHashedPassword = "$6$tkcT0WrRFX8pn81y$tgHFCYdtzjvSv5V3tYYy3.Rjbzdkb1/uSNRlYcO6AJaw3vtGY2G.N3GSdjOEqdtwc/yy1oKOalFUgcNQNuQW51";
  };

  # Normal user
  users.users.xors = {
    isNormalUser = true;
    group = "xors";
    extraGroups = ["wheel" "networkmanager"];
    uid = 1000;
    # initial password
    initialHashedPassword = "$6$tkcT0WrRFX8pn81y$tgHFCYdtzjvSv5V3tYYy3.Rjbzdkb1/uSNRlYcO6AJaw3vtGY2G.N3GSdjOEqdtwc/yy1oKOalFUgcNQNuQW51";
  };
  users.groups.xors = {
    gid = 1000;
  };
}
