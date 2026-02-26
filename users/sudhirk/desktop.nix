{ ... }:

{
  imports = [
    ./home.nix
    ./shell/zsh/desktop.nix
    ./desktop/niri/modules/desktop.nix
  ];

  programs.zathura.enable = true;
}
