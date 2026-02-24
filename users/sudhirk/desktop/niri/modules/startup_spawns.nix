{ ... }:

{
  programs.niri.settings.spawn-at-startup = [
    { sh = "hyprlock --grace 10"; }
    { sh = "python3 ~/.config/niri/scripts/niri_tile_to_n.py"; }
    { sh = "waybar"; }
    { sh = "swaybg -i ~/.config/wallpapers/wallpaper_desktop"; }
    { sh = "vicinae server"; }
    { sh = "/usr/bin/niri-sidebar listen"; }
    { sh = "quickshell"; }
    { sh = "emacs --daemon"; }

    { sh = "/home/sudhirk/.scripts/battery.sh"; }
    { sh = "sleep 5 && /home/sudhirk/.scripts/sync_boot.sh < /home/sudhirk/.scripts/git_folders.txt"; }
  ];
}
