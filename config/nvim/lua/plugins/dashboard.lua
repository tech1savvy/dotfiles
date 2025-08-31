if false then
  return {}
end
return {
  "snacks.nvim",
  opts = function(_, opts) -- opts is the default table from LazyVim
    -- override the header with your custom ASCII art
    opts.dashboard = opts.dashboard or {}
    opts.dashboard.preset = opts.dashboard.preset or {}
    opts.dashboard.preset.header = [[

████████╗███████╗ ██████╗██╗  ██╗     ██╗    ███████╗ █████╗ ██╗   ██╗██╗   ██╗██╗   ██╗
╚══██╔══╝██╔════╝██╔════╝██║  ██║    ███║    ██╔════╝██╔══██╗██║   ██║██║   ██║╚██╗ ██╔╝
   ██║   █████╗  ██║     ███████║    ╚██║    ███████╗███████║██║   ██║██║   ██║ ╚████╔╝ 
   ██║   ██╔══╝  ██║     ██╔══██║     ██║    ╚════██║██╔══██║╚██╗ ██╔╝╚██╗ ██╔╝  ╚██╔╝  
   ██║   ███████╗╚██████╗██║  ██║     ██║    ███████║██║  ██║ ╚████╔╝  ╚████╔╝    ██║   
   ╚═╝   ╚══════╝ ╚═════╝╚═╝  ╚═╝     ╚═╝    ╚══════╝╚═╝  ╚═╝  ╚═══╝    ╚═══╝     ╚═╝   

]]

    return opts
  end,
}
