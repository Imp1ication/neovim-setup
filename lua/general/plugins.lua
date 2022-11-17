return require('packer').startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Theme
    use "folke/tokyonight.nvim"
    use "ellisonleao/gruvbox.nvim" 
    use "shaunsingh/nord.nvim"
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    -- Telescope
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"

    -- Completion
    use { "hrsh7th/nvim-cmp", commit = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" } -- The completion plugin
    use { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" } -- buffer completions
    use { "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" } -- path completions
    use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" } -- snippet completions
    use { "hrsh7th/cmp-nvim-lsp", commit = "3cf38d9c957e95c397b66f91967758b31be4abe6" }
    use { "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" }

	-- Snippets
    use { "L3MON4D3/LuaSnip", commit = "8f8d493e7836f2697df878ef9c128337cbf2bb84" } --snippet engine
    use { "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" } -- a bunch of snippets to use
     
    -- LSP 
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "mfussenegger/nvim-jdtls"
    
    -- Treesitter
    use { 
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "p00f/nvim-ts-rainbow"

    -- Auto pair
    use "windwp/nvim-autopairs"
    
    -- Toggleterm 
    use "akinsho/toggleterm.nvim"

    -- git sign
    use "lewis6991/gitsigns.nvim"

    -- Buffer line 
    use "kyazdani42/nvim-web-devicons" 
    use "akinsho/bufferline.nvim"
    use "moll/vim-bbye"
     
end)
