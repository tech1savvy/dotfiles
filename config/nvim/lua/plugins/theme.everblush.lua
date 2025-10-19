if true then
  return {}
end
return {
  { "Everblush/nvim", name = "everblush" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everblush",
    },
  },
}
