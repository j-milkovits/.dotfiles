{ config
, pkgs
, ...
}: {
  imports = [
    ../../home/core.nix

    ../../home/base
    ../../home/gui
  ];

  # user specific program configuration
  programs.git = {
    enable = true;
    userName = "j-milkovits";
    userEmail = "j.milkovits.t@posteo.net";
  };
}
