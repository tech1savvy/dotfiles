return {
  "bkad/CamelCaseMotion",
  -- handles snake_case too
  config = function()
    vim.cmd([[
      " Map default vim motions for camel case navigation
      map <silent> w <Plug>CamelCaseMotion_w
      map <silent> b <Plug>CamelCaseMotion_b
      map <silent> e <Plug>CamelCaseMotion_e
      map <silent> ge <Plug>CamelCaseMotion_ge

      " Map text objects for camel case words
      omap <silent> iw <Plug>CamelCaseMotion_iw
      xmap <silent> iw <Plug>CamelCaseMotion_iw
      omap <silent> ib <Plug>CamelCaseMotion_ib
      xmap <silent> ib <Plug>CamelCaseMotion_ib
      omap <silent> ie <Plug>CamelCaseMotion_ie
      xmap <silent> ie <Plug>CamelCaseMotion_ie
    ]])
  end,
}
