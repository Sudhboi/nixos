{ pkgs, inputs, ... }:

{
  imports = [
    inputs.niri.homeModules.niri
    ./modules/layout_behaviour.nix
    ./modules/custom_binds.nix
    ./modules/system.nix
    ./modules/default_binds.nix
    ./modules/startup_spawns.nix
  ];

  programs.niri = {
    enable = true;
    package = pkgs.niri;
  };

  home.file.".config/niri/scripts/niri_tile_to_n.py".source = ./scripts/niri_tile_to_n.py;
}
