{ ... }:

{
  services.keyd = {
    enable = true;
    default = {
      extraConfig = ''
[ids]

*

[main]

capslock = overload(control, esc)
insert = capslock
f23+leftshift+leftmeta = C-space
    '';
    };
  };
}
