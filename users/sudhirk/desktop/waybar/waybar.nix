{ ... }:

{
  programs.waybar = {
    enable = true;
  };
  xdg.configFile."waybar/config.jsonc".source = ./config.jsonc;
  # xdg.configFile."waybar/config2.jsonc".source = ./config2.jsonc;
  xdg.configFile."waybar/style.css".source = ./style.css;
}
