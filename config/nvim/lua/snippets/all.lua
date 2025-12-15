local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("all", {
  s("todo", {
    t("TODO: "),
    i(1), -- Cursor jumps here after expansion
  }),
  -- Extend for others
  s("fix", { t("FIX: "), i(1) }),
  s("warning", { t("WARN: "), i(1) }),
})
