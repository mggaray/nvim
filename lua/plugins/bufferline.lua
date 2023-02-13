local status, bufferline = pcall(require, "bufferline")
if not status then
  print("ERROR bufferline")
  return
end

bufferline.setup({
  options = {
    modified_icon = "●",
    separator_style = "thin",
    buffer_close_icon = "",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    numbers = "ordinal",
    max_name_length = 15,
    max_prefix_length = 6,
    diagnostics = "nvim_lsp",
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    persist_buffer_sort = true,
    enforce_regular_tabs = true,
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and "" or ""
      return icon .. count
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Tree",
        separator=true,
        padding = 0
      }
    }
  },
})

--Close Buffer
vim.keymap.set('n', '<leader>0', '<Cmd>BufDel<CR>')
--Previous and Next buffer
vim.keymap.set('n', '<leader>[', '<Cmd>:bprev<Cr>')
vim.keymap.set('n', '<leader>]', '<Cmd>:bnext<Cr>')
--Jump to numbered buffer
vim.keymap.set('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>')
vim.keymap.set('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>')
vim.keymap.set('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>')
vim.keymap.set('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>')
vim.keymap.set('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>')
vim.keymap.set('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>')
vim.keymap.set('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>')
vim.keymap.set('n', '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>')
vim.keymap.set('n', '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>')
