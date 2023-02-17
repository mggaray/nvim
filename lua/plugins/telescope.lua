-- Telescope Remap
require('telescope').setup {
  defaults = { file_ignore_patterns = { "node_modules" }
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
    }
  },
}

require("telescope").load_extension "file_browser"
require('telescope').load_extension('vim_bookmarks')
--TELESCOPE REMAP
local builtin = require('telescope.builtin')
vim.api.nvim_set_keymap("n", "<Leader>fB", "<Cmd>:Telescope file_browser<Cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fb", "<Cmd>:Telescope file_browser<Cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fw", "<Cmd>:Telescope grep_string<Cr>", { noremap = true })
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
