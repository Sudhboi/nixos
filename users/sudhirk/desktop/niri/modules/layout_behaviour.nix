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

    overview = {
      workspace-shadow.enable = false;
      backdrop-color = "transparent";
    };

    cursor = {
      hide-after-inactive-ms = 5000;
      size = 24;
    };

    layer-rules = [
      {
        matches = [
          { namespace = "^hyprpaper$"; }
        ];
        place-within-backdrop = true;
      }
    ];
  };
}
