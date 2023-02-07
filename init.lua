require("plugins")

Theme("gruvbox")
-- SHOW LINES IN EDITOR
vim.wo.number=true

-- RELATIVE LINES
vim.opt.relativenumber = false
vim.opt.wildmenu = true
--INDENT
local o = vim.o

o.expandtab = true
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2
