{
  description = "Neovim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.neovim.override {
      configure = {
        customRC = ''
          source ./init.lua
          set runtimepath+=.
        '';
      };
    };
  };
}

