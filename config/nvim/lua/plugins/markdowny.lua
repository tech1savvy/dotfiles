if false then
  return {}
end
return {
  "antonk52/markdowny.nvim",
  config = function()
    require("markdowny").setup()
  end,
}
