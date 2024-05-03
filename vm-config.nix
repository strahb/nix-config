{
# Enable the OpenSSH daemon
  services.openssh = {
	enable = true;
	banner = "NixOS-VM";
	passwordAuthentication = true;
  	permitRootLogin = "yes";
  };

# Enable VMWare Guest Services
  virtualisation.vmware.guest.enable = true;
}
