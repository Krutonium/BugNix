{ config, lib, pkgs, ... }:
{
  environment.systemPackages = [
    ### General utils ###
    pkgs.bat
    pkgs.ranger

    ### Exploitation ###
    pkgs.metasploit
    pkgs.sqlmap

    ### Forensics ###
    pkgs.capstone
    pkgs.ddrescue
    pkgs.ext4magic
    pkgs.extundelete
    pkgs.ghidra-bin
    pkgs.git
    pkgs.p0f
    pkgs.pdf-parser
    pkgs.python39Packages.binwalk
    pkgs.python39Packages.distorm3
    pkgs.sleuthkit
    #pkgs.volatility Broken

    ### Hardware ###
    pkgs.apktool

    ### Recon ###
    pkgs.cloudbrute
    pkgs.dnsenum
    pkgs.dnsrecon
    pkgs.enum4linux
    pkgs.hping
    pkgs.masscan
    pkgs.netcat
    pkgs.nmap
    pkgs.ntopng
    pkgs.sn0int
    pkgs.sslsplit
    pkgs.theharvester
    pkgs.wireshark
    # wireshark-cli

    ### Backdoors ###
    pkgs.httptunnel
    pkgs.pwnat

    ### Passwords ###
    pkgs.brutespray
    pkgs.chntpw
    pkgs.crowbar
    pkgs.crunch
    pkgs.hashcat
    pkgs.hcxtools
    pkgs.john
    # python36Packages.patator
    pkgs.phrasendrescher
    pkgs.thc-hydra

    ### Reverse ###
    pkgs.binutils
    pkgs.elfutils
    pkgs.jd-cli
    pkgs.jd-gui
    pkgs.patchelf
    pkgs.radare2
    pkgs.radare2-cutter
    pkgs.retdec
    pkgs.snowman
    pkgs.valgrind
    pkgs.yara

    ### Sniffing ###
    pkgs.bettercap
    pkgs.dsniff
    pkgs.mitmproxy
    pkgs.rshijack
    pkgs.sipp
    pkgs.sniffglue

    ### Vuln analisys ###
    pkgs.grype
    pkgs.lynis
    pkgs.sqlmap
    pkgs.vulnix

    ### Web ###
    pkgs.burpsuite
    pkgs.dirb
    pkgs.gobuster
    pkgs.urlhunter
    pkgs.wfuzz
    # wpscan
    pkgs.zap
  ];
}
