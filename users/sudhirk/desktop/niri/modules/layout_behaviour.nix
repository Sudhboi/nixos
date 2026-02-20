{ ... }:

{
  programs.niri.settings = {
    layout = {
      gaps = 0;
      background-color = "transparent";
      focus-ring.enable = false;
      border.enable = false;

      default-column-width = {
        proportion = 0.5;
      };
    };

    hotkey-overlay.skip-at-startup = true;

    prefer-no-csd = true;
  };
}
