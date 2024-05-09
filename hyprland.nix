{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

	environment.sessionVariables = {
  # If your cursor becomes invisible
  WLR_NO_HARDWARE_CURSORS = "1";
  # Hint electron apps to use wayland
  NIXOS_OZONE_WL = "1";
  };

  hardware.opengl.enable = true;

  environment.systemPackages = [
  (pkgs.waybar.overrideAttrs (oldAttrs: {
    mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
  }))];

  xdg.portal.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "fr";
    xkbVariant = "";
  };

}