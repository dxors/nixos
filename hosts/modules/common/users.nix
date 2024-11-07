{
  users.users.root = {
    ## hash: mkpasswd -m SHA-512 -s
    initialHashedPassword = "$6$QYLETBTGd21apfXW$xJu/rrNLA3XjfpV5CMhHnPnXokpdOzfczmQKTDiO3MyIKBY49l20hJhwekGXQtqx9AWp9elhk.hQ0LOgHLn0w.";
  };

  # Normal user
  users.users.xors = {
    isNormalUser = true;
    group = "xors";
    extraGroups = ["wheel" "networkmanager"];
    uid = 1000;
    # initial password
    initialHashedPassword = "$6$QYLETBTGd21apfXW$xJu/rrNLA3XjfpV5CMhHnPnXokpdOzfczmQKTDiO3MyIKBY49l20hJhwekGXQtqx9AWp9elhk.hQ0LOgHLn0w.";
  };
  users.groups.firecat53 = {
    gid = 1000;
  };
}
