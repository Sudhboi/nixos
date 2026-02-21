{ ... }:

{
  programs.niri.settings.binds = {
    "Mod+T".action.spawn-sh = "kitty --hold fastfetch";
    "Mod+Z".action.spawn = "zen-twilight";
    "Mod+E".action.spawn = "emacs";
    "F12".action.spawn-sh = "kitty btop";
    "Mod+Space".action.spawn-sh = "vicinae toggle";
  };
}
