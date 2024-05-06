{config, pkgs, ...}: {

  # Enable the OpenSSH daemon
  services.openssh = {
    enable = true;
    settings.PasswordAuthentication = true;
    settings.PermitRootLogin = "yes";
  };

  # Enable VMWare Guest Services
  virtualisation.vmware.guest.enable = true;
}
