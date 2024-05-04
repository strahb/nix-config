{
# Enable the OpenSSH daemon
  services.openssh = {
	enable = true;
	banner = "NixOS-VM";
	settings.PasswordAuthentication = true;
  settings.PermitRootLogin = "yes";
  };

# Enable VMWare Guest Services
  virtualisation.vmware.guest.enable = true;
}
