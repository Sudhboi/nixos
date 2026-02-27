{ ... }:

{
  imports = [
    ./niri/niri.nix
    ./waybar/waybar.nix
    ./swaync/swaync.nix
    ./wallpapers/wallpapers.nix
    ./cursor/cursor.nix
    ./hypr/hypridle.nix
    ./hypr/hyprlock.nix
    ./hypr/hyprpaper.nix
  ];

  xdg.configFile."wlr-which-key/config.yaml".source = ./wlr-which-key/config.yaml;
}
