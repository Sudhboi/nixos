{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./../configuration.nix
    ./nvidia.nix
  ];
}
