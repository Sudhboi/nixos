{ ... }:

{
  home.file.".scripts/sync_boot.sh".source = ./sync_boot.sh;
  home.file.".scripts/sync_poweroff.sh".source = ./sync_poweroff.sh;
  home.file.".scripts/git_folders.txt".source = ./git_folders.txt;

  home.file.".scripts/battery.sh".source = ./battery.sh;
}
