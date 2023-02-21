-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

return require('packer').startup(function(use)

  --######################## BASIC ################################

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }

  --######################## PLUGINS ################################

  --LSPsaga
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      --Please make sure you install markdown and markdown_inline parser
      { "nvim-treesitter/nvim-treesitter" }
    }
  })

  --treeFile
  use {
    'nvim-tree/nvim-tree.lua',
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- TELESCOPE
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }

  -- PRETTIER
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- TREESITER
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  --DevIcons
  use('nvim-tree/nvim-web-devicons')

  --Lualine
  use {
    'nvim-lualine/lualine.nvim',
  }

  --Trouble plugin
  use { "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end }

  --Dashboard
  use { 'glepnir/dashboard-nvim' }

  --Bookmarks
  use 'MattesGroeger/vim-bookmarks'
  use 'tom-anders/telescope-vim-bookmarks.nvim'

  --Tabs
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use { 'ojroques/nvim-bufdel' }

  --Surround
  use({
    "kylechui/nvim-surround",
    tag = "*",
    config = function()
      require("nvim-surround").setup({
      })
    end
  })
  --AutoPair
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  --AutoTag
  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require 'nvim-treesitter.configs'.setup {
        autotag = { enable = true, }
      }
    end
  }

  --############################ THEMES ###########################
  use({ "ellisonleao/gruvbox.nvim" })
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use({ 'catppuccin/vim', as = 'catppuccin' })
  use 'folke/tokyonight.nvim'
  use 'shatur/neovim-ayu'
end)
