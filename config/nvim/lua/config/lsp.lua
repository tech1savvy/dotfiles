-- Disable all diagnostics globally
vim.diagnostic.enable(false)

local lspconfig = require("lspconfig")

-- JSON language server with Postman schema for specific JSON files
lspconfig.jsonls.setup({
  settings = {
    json = {
      schemas = {
        {
          fileMatch = { "collections/*.json", "*.postman_collection.json" },
          url = "https://schema.postman.com/json/collection/v2.0.0/collection.json",
        },
      },
    },
  },
})
