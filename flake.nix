{
  description = "Neovim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.neovim.override {
      configure = {
        customRC = ''

          luafile ${./lua/packer_init.lua}
          luafile ${./lua/core/autocmds.lua}
          luafile ${./lua/core/colors.lua}
          luafile ${./lua/core/options.lua}
          luafile ${./lua/core/keymap.lua}
          luafile ${./lua/plugins/barbar.lua}
          luafile ${./lua/plugins/gitsigns.lua}
          luafile ${./lua/plugins/lualine.lua}
          luafile ${./lua/plugins/indent-blankline.lua}
          luafile ${./lua/plugins/nvim-cmp.lua}
          luafile ${./lua/plugins/nvim-lspconfig.lua}
          luafile ${./lua/plugins/nvim-telescope.lua}
          luafile ${./lua/plugins/nvim-treesitter.lua}
          luafile ${./lua/plugins/oil.lua}
          luafile ${./lua/plugins/trouble.lua}
        '';
      };
    };
  };
}

