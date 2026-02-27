{ ... }:

let
  wallpaper_path = ".config/wallpapers";
in
{
  home.file = {
    "${wallpaper_path}/wallpaper_desktop".source = ./Wallpaper-Nix-Cat.png;
    "${wallpaper_path}/wallpaper_lockscreen".source = ./Wallpaper-Nix-Blue.png;
  };
}
