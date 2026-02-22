{ ... }:

{
  programs.niri.settings.binds = {
    "Mod+T".action.spawn-sh = "kitty --hold fastfetch";
    "Mod+Z".action.spawn = "zen-twilight";
    "Mod+E".action.spawn-sh = "emacsclient -c";
    "F12".action.spawn-sh = "kitty btop";
    "Mod+Space".action.spawn-sh = "vicinae toggle";
    "Ctrl+Space".action.spawn-sh = "wlr-which-key";
  };
}
