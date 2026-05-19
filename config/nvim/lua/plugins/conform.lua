return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- GO
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.go = { "goimports", "gofumpt", "golines" }

      -- golines argments
      opts.formatters = opts.formatters or {}
      opts.formatters.golines = {
        prepend_args = { "--max-len=100", "--base-formatter=gofumpt" },
      }

      -- MARKDOWN
      opts.formatters_by_ft = {
        markdown = {},
      }
    end,
  },
}
