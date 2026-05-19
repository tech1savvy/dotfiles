return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local keys = opts.servers["*"].keys

    for _, key in ipairs(keys) do
      if key[1] == "<leader>ss" then
        key[2] = function()
          require("snacks").picker.lsp_workspace_symbols({
            filter = LazyVim.config.kind_filter,
          })
        end
        key.desc = "LSP Workspace Symbols"
      elseif key[1] == "<leader>sS" then
        key[2] = function()
          require("snacks").picker.lsp_symbols({
            filter = LazyVim.config.kind_filter,
          })
        end
        key.desc = "LSP Symbols"
      end
    end
  end,
}
