return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Define which formatters to use for go files
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.go = { "goimports", "gofumpt", "golines" }

      -- (Optional) Customize golines arguments, such as max line length
      opts.formatters = opts.formatters or {}
      opts.formatters.golines = {
        prepend_args = { "--max-len=100", "--base-formatter=gofumpt" },
      }
    end,
  },
}
