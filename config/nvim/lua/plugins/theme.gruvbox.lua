if true then
  return {}
end
return {
  { -- Easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    "ellisonleao/gruvbox.nvim", -- Change to gruvbox.nvim
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      -- Optional: setup gruvbox with custom options
      require("gruvbox").setup({
        -- Example: disable italic comments
        italic = {
          comments = false,
        },
        -- Other options can be set here, see the plugin README for more
      })

      -- Load the colorscheme
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
