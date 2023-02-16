require("lspsaga").setup({
  symbol_in_winbar = {
    enable = true,
    separator = " ",
    hide_keyword = true,
    show_file = false,
    folder_level = 2,
    respect_root = false,
    color_mode = false,
  }
})

vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")

-- Code action
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")

-- Rename all occurrences of the hovered word for the entire file
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>")

-- Rename all occurrences of the hovered word for the selected files
vim.keymap.set("n", "gR", "<cmd>Lspsaga rename ++project<CR>")

-- Peek definition
vim.keymap.set("n", "<cmd>Lspsaga peek_definition<CR>", "gd")

-- Go to definition
vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>")

--Toggle outline
vim.keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>")

--Show code actions
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")

--Hierarchy
vim.keymap.set("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>")
vim.keymap.set("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>")


-- Floating terminal
vim.keymap.set({ "n", "t" }, "<Leader>fa", "<cmd>Lspsaga term_toggle<CR>")
