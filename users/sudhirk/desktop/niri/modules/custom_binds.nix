{ ... }:

{
  programs.niri.settings.binds = {
    "Mod+T".action.spawn-sh = "kitty --hold fastfetch";
  };
}
