require("plugins")
-- Background Opacity 
-- vim.o.background ="dark"

function theme(color)
	color= color or "gruvbox"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", {bg="none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
end

theme("gruvbox")

-- SHOW LINES IN EDITOR
vim.wo.number=true

-- RELATIVE LINES
vim.opt.relativenumber = true
vim.opt.wildmenu = true


--INDENT
vim.bo.autoindent = true
vim.bo.expandtab = true
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.tabstop = 2
vim.bo.smartindent = true
