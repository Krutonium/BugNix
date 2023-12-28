# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [
      # List of Packages that come with Kali
      ./kali.nix
    ];

  # Use the systemd-boot EFI boot loader
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
    };
    systemd-boot = {
      enable = true;
    };
  };

  networking = {
    hostName = "BugNix";
    networkmanager.enable = true;
    #Uncomment if you need to set a proxy
    #proxy.default = "http://user:password@proxy:port/";
    #proxy.noProxy = "127.0.0.1,localhost,internal.domain";
    firewall = {
      enable = true;
      #Allow SSH
      allowedTCPPorts = [ 22 ];
    };
  };
  # Set your time zone.
  time.timeZone = "Europe/London";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  services = {
    #Enable X11/Wayland and Install Gnome
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
      libinput.enable = true;
    };

    #Sound Services with support for everything enabled.
    pipewire = {
      enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
      pulse = {
        enable = true;
      };
      jack = {
        enable = true;
      };
    };

    openssh = {
      enable = true;
      settings = {
        PermitRootLogin = "no"; #you can still `sudo su` if you need to
        PasswordAuthentication = true;
      };
      ports = [ 22 ];
    };
  };



  # Additional Sound Config.
  sound.enable = true;
  hardware.pulseaudio.enable = false;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.calax = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      firefox
      tree
      nano
    ];
  };

  # Do not change this unless you're doing a full system reinstall.
  system.stateVersion = "23.11"; # Did you read the comment?

}

