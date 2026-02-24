{ ... }:

{
  programs.zsh = {
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/.dotfiles#desktop";
    };

    initContent = ''

      function hms() {
          cd ~/.dotfiles/
          git add .
          home-manager switch --flake ~/.dotfiles#desktop
          cd -
      }

    '';
  };
}
