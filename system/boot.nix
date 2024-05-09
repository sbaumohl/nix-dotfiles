{ ... }: {

   loader = {
	# systemd-boot.enable = true;
	efi.canTouchEfiVariables = true;
	grub.efiSupport = true;
	grub.enable = true;
	grub.useOSProber = true;
	grub.device = "nodev";
  };
}
