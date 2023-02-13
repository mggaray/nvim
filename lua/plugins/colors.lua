require("gruvbox").setup({
  transparent_mode = true,
})

vim.opt.termguicolors = true

function Theme(color)
  color = color or "gruvbox"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  -- NO gutter backround
  vim.cmd('highlight SignColumn guibg=none')
  vim.cmd('highlight clear SignColumn')
  vim.cmd('highlight! link SignColumn LineNr')
end

vim.wo.cursorline = true
