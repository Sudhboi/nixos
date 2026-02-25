{ lib, pkgs, ... }:

{
  programs.sioyek = {
    enable = true;
    # HACK: fix pipewire issue
    package = pkgs.symlinkJoin {
      name = "sioyek-hotfix";
      paths = [ pkgs.sioyek ];
      buildInputs = [ pkgs.makeWrapper ];
      postBuild = ''
        wrapProgram $out/bin/sioyek \
          --prefix LD_LIBRARY_PATH : ${lib.makeLibraryPath [ pkgs.pipewire ]}
      '';
    };
  };
}
