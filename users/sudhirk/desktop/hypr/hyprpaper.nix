{ ... }:

{
  services.hyprpaper = {
    enable = true;
  };
  home.file.".config/hypr/hyprpaper.conf".source = ./hyprpaper.conf;
}
