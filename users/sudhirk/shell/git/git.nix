{ ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user.name = "Sudhir Krisna";
      user.email = "sudhboiii@gmail.com";
      init.defaultBranch = "main";
    };
  };
}
