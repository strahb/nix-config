{ inputs, config, pkgs, ... }:

{

  # nix.settings = {
  #   substituters = ["https://hyprland.cachix.org"];
  #   trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  # };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  xdg.portal.enable = true;


  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  hardware = { 
    opengl.enable = true;
    nvidia.modesetting.enable = true;
  };
  
  environment.systemPackages = with pkgs; [
    pkgs.networkmanagerapplet
    gtk3
    swww
    kitty
    alacritty
    rofi-wayland
    waybar
      (pkgs.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      })
      )
    gnome-icon-theme
    mako
    libnotify
  ];

}
