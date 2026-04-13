return {
  "jellydn/quick-code-runner.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    debug = true,
  },
  cmd = { "QuickCodeRunner", "QuickCodePad" },
  keys = {
    -- Run Selected Code
    {
      "<C-CR>",
      ":QuickCodeRunner<CR>",
      desc = "Quick Code Runner",
      mode = "v",
    },
    -- Run Current File/Buffer
    {
      "<C-CR>",
      "gg0vGg$:QuickCodeRunner<CR>",
      desc = "Quick File Code Runner",
      mode = "n",
    },
    -- Open Quick Run Pad
    {
      "<leader>rp",
      ":QuickCodePad<CR>",
      desc = "Quick Run Pad",
      mode = "n",
    },
  },
}
