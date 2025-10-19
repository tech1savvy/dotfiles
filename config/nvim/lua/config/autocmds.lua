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

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local default_handler = vim.lsp.handlers["textDocument/publishDiagnostics"]
    vim.lsp.handlers["textDocument/publishDiagnostics"] = function(err, method, result, client_id, bufnr, config)
      if result and result.diagnostics then
        local idx = 1
        while idx <= #result.diagnostics do
          if tostring(result.diagnostics[idx].code) == "80001" then
            table.remove(result.diagnostics, idx)
          else
            idx = idx + 1
          end
        end
      end
      default_handler(err, method, result, client_id, bufnr, config)
    end
    print("Custom diagnostics handler loaded")
  end,
})
