-- Leader remap
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>hh", '<Cmd>:NvimTreeFocus<CR>')

-- Normal Remaps
vim.keymap.set('n', '<leader>ps', function() vim.builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
--Relative lines
vim.keymap.set("n", "<leader>rl", "<Cmd>:set invrelativenumber<CR>")

vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true })

--trouble
vim.keymap.set('n', '<leader>tt', "<Cmd>:TroubleToggle<CR>")
