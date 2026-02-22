{ ... }:

let
  wallpaper_path = ".config/wallpapers";
in
{
  home.file = {
    "${wallpaper_path}/wallpaper_desktop".source = ./Wallpaper-Gargantua.jpg;
    "${wallpaper_path}/wallpaper_lockscreen".source = ./Wallpaper-Moon.jpg;
  };
}
