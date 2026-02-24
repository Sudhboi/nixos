{ ... }:

{
  programs.zsh = {
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/.dotfiles#laptop";
    };

    initContent = ''

      function hms() {
          cd ~/.dotfiles/
          git add .
          home-manager switch --flake ~/.dotfiles#laptop
          cd -
      }

    '';
  };
}
