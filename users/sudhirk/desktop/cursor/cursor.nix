{ pkgs, ... }:

{
  home.pointerCursor = {
    enable = true;
    name = "Material Cursors";
    package = pkgs.material-cursors;

    gtk.enable = true;
  };
}
