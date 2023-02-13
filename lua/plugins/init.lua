require("plugins.remap")
require('plugins.webDevIcons')
require("plugins.lsp")
require("plugins.formatter")
require("plugins.nvim-tree")
require("plugins.db")
require("plugins.treesiter")
require("plugins.colors")
require("plugins.lualine")
require("plugins.bufferline")

-- Auto update when packer installs a new plugin
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

require('telescope').setup { defaults = { file_ignore_patterns = { "node_modules" } } }
