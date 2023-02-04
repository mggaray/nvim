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
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
 }

--######################## PLUGINS ################################

  -- nerdtree 
  use {'preservim/nerdtree'}

  -- TELESCOPE 
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- PRETTIER
  use('neovim/nvim-lspconfig')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- TREESITER
  use('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})

  --DevIcons
  use{'ryanoasis/vim-devicons'}

  --Lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

  --############################ THEMES ###########################
  use({ "ellisonleao/gruvbox.nvim" })
  use({'rose-pine/neovim', as = 'rose-pine'   })

end)
