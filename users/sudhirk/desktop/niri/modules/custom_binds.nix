{ ... }:

{
  programs.niri.settings.binds = {
    "Mod+T".action.spawn-sh = "kitty --hold fastfetch";
    "Mod+Z".action.spawn = "zen-twilight";
    "Mod+E".action.spawn = "emacs";
  };
}
