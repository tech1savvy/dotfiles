-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Close All Buffers
local function closeAllBuffers()
  local bufs = vim.api.nvim_list_bufs()
  for _, buf in ipairs(bufs) do
    vim.api.nvim_buf_delete(buf, {})
  end
end

-- vim.keymap.set("n", "<leader>ba", closeAllBuffers, { silent = true, desc = "Close all buffers" })
vim.keymap.set("n", "<leader>ba", "<cmd>%bd<CR>", { silent = true, desc = "Close all buffers" })

-- Insert '---' line after the current line
local function AddHorizontalRule(position)
  position = position or 0
  local line = vim.fn.line(".") + position
  vim.api.nvim_buf_set_lines(0, line, line, false, { "---" })
end

-- Map adding horizontal rule below current line
vim.keymap.set("n", "<leader>mh", function()
  AddHorizontalRule(0)
end, { silent = true, desc = "Add Horizontal Rule below" })

-- Map adding horizontal rule above current line
vim.keymap.set("n", "<leader>mH", function()
  AddHorizontalRule(-1)
end, { silent = true, desc = "Add Horizontal Rule above" })
