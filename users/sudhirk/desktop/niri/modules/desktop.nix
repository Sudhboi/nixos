{ ... }:

{
  programs.niri.settings = {
    outputs.HDMI-A-1 = {
      mode = {
        height = 1440;
        width = 2560;
        refresh = 144.002;
      };
    };
  };
}
