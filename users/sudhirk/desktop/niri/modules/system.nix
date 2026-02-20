{ ... }:

{
  programs.niri.settings = {
    input.touchpad = {
      natural-scroll = true;
      scroll-factor = 0.4;
    };

    outputs.eDP-1 = {
      mode = {
        height = 1800;
        width = 2880;
        refresh = 120.0;
      };
      scale = 1.7;
      variable-refresh-rate = true;
    };
  };
}
