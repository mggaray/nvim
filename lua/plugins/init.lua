require("plugins.remap")
require("plugins.prettier")
require("plugins.lsp")
require("plugins.NERDtree")
require("plugins.treesiter")
require("plugins.colors")
require("plugins.lualine")
-- Auto update when packer installs a new plugin
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }
