if true then
  return {}
end
return {
  -- FIX: Does not auto-enables
  "razak17/tailwind-fold.nvim",
  opts = {
    enabled = true,
    symbol = "…", -- 󱏿
    highlight = {
      fg = "#38BDF8", -- [[ symbol color ]]
    },
    ft = {
      "html",
      "svelte",
      "astro",
      "vue",
      "tsx",
      "php",
      "blade",
      "eruby",
      "edge",
      "htmldjango",
    },
  },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ft = { "html", "svelte", "astro", "vue", "typescriptreact", "javascriptreact", "php", "blade" },
}
