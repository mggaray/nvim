require("./plugins")
Theme("tokyonight-night")
-- vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = Open_nvim_tree})
--
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- SHOW LINES IN EDITOR
vim.wo.number = true

-- RELATIVE LINES
vim.opt.relativenumber = true
vim.opt.wildmenu = true

--INDENT
local o = vim.o
o.expandtab = true
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2
