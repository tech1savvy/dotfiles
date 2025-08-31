-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Treat .ejs files as HTML
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.ejs",
  callback = function()
    vim.bo.filetype = "html"
  end,
})

-- Custom colors for bold and italic styles
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.md",
  callback = function()
    vim.cmd("highlight @markup.strong guifg=#fb4934 gui=bold")
    vim.cmd("highlight @markup.italic guifg=#fabd2f gui=italic")
  end,
})

-- Disable line diagnostics in markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.diagnostic.config({ virtual_text = false })
  end,
})

-- Custom rendering for strikethrough text
vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = "#6495ED", bg = "#2C3E50" })
