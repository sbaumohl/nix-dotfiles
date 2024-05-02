{ ... }: {

  loader = {
	systemd-boot.enable = true;
	efi.canTouchEfiVariables = true;
	grub.useOSProber = true;
	grub.device = "nodev";
  };
}
