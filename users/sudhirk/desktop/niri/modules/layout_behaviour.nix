{ ... }:

{
  programs.niri.settings = {
    layout = {
      gaps = 0;
      background-color = "transparent";
      focus-ring.enable = false;
      border.enable = false;
    };

    hotkey-overlay.skip-at-startup = true;

    prefer-no-csd = true;
  };
}
