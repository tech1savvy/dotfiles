if true then
  return {}
end
return {
  "malbertzard/inline-fold.nvim",

  opts = {
    defaultPlaceholder = "…",
    queries = {

      -- Some examples you can use
      html = {
        { pattern = 'class="([^"]*)"', placeholder = "@" }, -- classes in html
        { pattern = 'href="(.-)"' }, -- hrefs in html
        { pattern = 'src="(.-)"' }, -- HTML img src attribute
      },
      javascriptreact = {
        { pattern = 'className="([^"]*)"', placeholder = "@" },
      },
    },
  },
}
