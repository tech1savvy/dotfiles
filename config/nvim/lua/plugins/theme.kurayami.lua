if true then
  return {}
end
return {
  "kevinm6/kurayami.nvim",
  event = "VimEnter", -- load plugin on VimEnter or
  -- lazy = false,                  --   don't lazy load plugin
  priority = 1000,
  ---Use this config to override some highlights
  config = function(_, opts)
    ---override or add highlights passing table, same as `:h nvim_set_hl()`
    ---@usage
    opts.override = {
      Number = { fg = "#015a60", bg = "NONE", bold = true },
      -- HiGroup = { fg = "#HexCol", bg = "#HexCol" }
    }
    require("kurayami").setup(opts)
    vim.cmd.colorscheme("kurayami")
  end,
}
