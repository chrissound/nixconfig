# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/e6e9c014-056d-46d5-97a8-8c755667e63d";
      fsType = "ext4";
      options = [ "noatime" "nodiratime" "discard" ]; 
    };

  fileSystems."/home/chris/chrishomeold" =
    { device = "/dev/disk/by-uuid/35375d90-1dc3-4709-9c42-49be406c9db6";
      fsType = "ext4";
      options = [ "noatime" "nodiratime" "discard" ]; 
    };

  swapDevices = [ ];

  nix.maxJobs = lib.mkDefault 4;
}
