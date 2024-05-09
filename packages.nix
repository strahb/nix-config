{config, pkgs, ...}: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    eza # An Alternative ls
    manix # A fast CLI documentation searcher for Nix
    lm_sensors
    nnn
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    vimPlugins.nnn-vim
    wget
    fastfetch # Just a better successor tbh
    vivaldi
    vivaldi-ffmpeg-codecs
    rofi
    rofi-emoji
    rofi-power-menu
    alacritty
    kitty
    dunst
    waybar
    swww
    wofi
    swayidle
    swaylock
    xdg-desktop-portal-hyprland
    iperf2
    networkmanagerapplet
  ];
} 