return {
  "NMAC427/guess-indent.nvim",
  event = "BufReadPre",
  config = function()
    require("guess-indent").setup({
      on_space = function()
        vim.bo.expandtab = true
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.softtabstop = 4
      end,
      -- Optionally, you can also set on_tab if you want tabs to be 4 spaces wide:
      on_tab = function()
        vim.bo.expandtab = false
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.softtabstop = 4
      end,
      -- Optional: Exclude certain filetypes or buffers
      -- filetype_exclude = { "netrw", "tutor" },
      -- buftype_exclude = { "help", "nofile", "terminal", "prompt" },
    })
  end,
}
