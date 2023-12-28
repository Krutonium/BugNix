# BugNix
A NixOS based distribution intended to enable Pentesting similar to Kali Linux or BugBuntu, but as an ISO or container.

To build, run `nix-shell` and then `nixos-generate -f <type> -c ./configuration.nix` where `<type>` can be anything listed [Here](https://github.com/nix-community/nixos-generators) - I recommend `iso`.
