-- Leader remap
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>hh", vim.cmd.Ex)

-- Normal Remaps
  vim.keymap.set('n', '<leader>ps', function() builtin.grep_string({ search=vim.fn.input("Grep > ") });
  end)
  --Relative lines
  vim.keymap.set("n", "<leader>rl", "<Cmd>:set invrelativenumber<CR>")
  -- Tabs remap
  vim.keymap.set("n", "<H>", vim.cmd.gT)
  vim.keymap.set("n", "<L>", vim.cmd.gt)

-- Telescope Remap
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', {noremap=true, silent=true})


