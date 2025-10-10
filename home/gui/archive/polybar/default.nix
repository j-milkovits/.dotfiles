{ pkgs
, config
, ...
}: {
  # wallpaper, binary file
  home.file.".config/polybar/config.ini".source = ./config.ini;
  home.file.".config/polybar/launch.sh".source = ./launch.sh;
  # home.file.".config/i3/scripts" = {
  #     source = ./scripts;
  #     recursive = true; 
  #     executable = true;
  # };
}
