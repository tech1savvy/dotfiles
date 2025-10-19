if true then
  return {}
end
return {
  "glacambre/firenvim",
  build = ":call firenvim#install(0)",
}
