{ ... }:

{
  programs.niri.settings.spawn-at-startup = [
    { sh = "hyprlock --grace 10"; }
    { sh = "python3 ~/.config/niri/scripts/niri_tile_to_n.py"; }
    { sh = "swaync"; }
    { sh = "waybar"; }
    { sh = "hypridle"; }
    { sh = "swaybg -i ~/Pictures/Wallpaper-Gargantua.jpg"; }
    { sh = "vicinae server"; }
    { sh = "/usr/bin/niri-sidebar listen"; }
    { sh = "quickshell"; }
  ];
}
