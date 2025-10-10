{ pkgs
, config
, ...
}: {
  # wallpaper, binary file
  xdg.configFile."i3/config".source = ./config;
  xdg.configFile."i3/wallpaper.png".source = ./wallpaper.png;
  # home.file.".config/i3/scripts" = {
  #     source = ./scripts;
  #     recursive = true; 
  #     executable = true;
  # };

  # set cursor size and dpi for high-res monitor
  xresources.properties = {
    "Xcursor.size" = 14;
    "Xft.dpi" = 96;
  };
}
