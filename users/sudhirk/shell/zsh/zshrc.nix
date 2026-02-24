{ ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/.dotfiles";

      q = "exit";
      bat-info="cat /sys/class/power_supply/BAT0/uevent";
      dt="~/.backups/dotfiles/copy.sh";
      bruh="python3 ~/.bruh/bruh.py";
      wqa="pkill yazi";
      lg="lazygit";
    };

    initContent = ''

export PATH="$HOME/.emacs.d/bin:$PATH"

function hms() {
    cd ~/.dotfiles/
    git add .
    home-manager switch --flake ~/.dotfiles/
    cd -
}

function k1() {
    for ((i = 0.9 ; i <= 1.0 ; i = i + 0.05 )); do sleep 0.001 && kitty @ set-background-opacity $i; done
    sleep 0.001
    kitty @ set-background-opacity 1.0
}

function k9() {
    for ((i = 1.0 ; i >= 0.9 ; i = i - 0.05 )); do sleep 0.001 && kitty @ set-background-opacity $i; done
    sleep 0.001
    kitty @ set-background-opacity 0.9
}

function yo() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d \'\' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

function yq() {
  if [ "$1" != "" ]; then
    if [ -d "$1" ]; then
      cd "$1"
      yo
    else
      cd "$(zoxide query $1)"
      yo
    fi
  else
    yo
  fi
    return $?
}

function y() {
    k1
    yq $1
    k9
}

function n() {
    k1
    cd $1
    nvim .
    k9
}

function acp() {
    git add .
    git commit -m $1
    git push
}

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"


    '';
  };
}
