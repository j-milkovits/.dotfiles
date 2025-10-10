{ pkgs
, ...
}: {
  # i3 related options
  # links /libexec from derivations to /run/current-system/sw
  environment.pathsToLink = [ "/libexec" ];
  services.displayManager.defaultSession = "none+i3";

  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
    };

    displayManager = {
      lightdm.enable = false;
      gdm.enable = true;
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        rofi # application launcher, the same as dmenu
        dunst # notification daemon
        i3lock # default i3 screen locker
        xautolock # lock screen after some time
        i3status # provide information to i3bar
        i3-gaps # i3 with gaps
        picom # transparency and shadows
        feh # set wallpaper
        acpi # battery information
        arandr # screen layout manager
        dex # autostart applications
        xbindkeys # bind keys to commands
        xorg.xbacklight # control screen brightness
        xorg.xdpyinfo # get screen information
        sysstat # get system information
        alacritty
        polybar
        xclip
      ];
    };

    # Configure keymap in X11
    xkb.layout = "us";
    xkb.variant = "";
  };

}
