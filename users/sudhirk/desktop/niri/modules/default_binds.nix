{ ... }:

{
  programs.niri.settings.binds = {
    "Mod+Shift+E".action.quit = {};
    "Mod+Q".action.close-window = {};


    "Mod+F".action.maximize-column = {};
    "Mod+Shift+F".action.fullscreen-window = {};
    "Mod+Ctrl+F".action.expand-column-to-available-width = {};

    "Mod+C".action.center-column = {};
    "Mod+Ctrl+C".action.center-visible-columns = {};

  };
}
