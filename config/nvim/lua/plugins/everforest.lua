if false then
  return {}
end
return {
  -- Install theme
  { "sainnhe/everforest" },

  -- Configure LazyVim to load theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
