-- GAPS
hl.config({
  general = {
    gaps_in = 1,
    gaps_out = 1,
    float_gaps = 0,
    gaps_workspaces = 0,
  },
})

-- SMART GAPS
-- single tiled window (no gaps)
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, border_size = 0 })
hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, rounding = 0 })

-- single fullscreen window (no gaps)
hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })
hl.window_rule({ match = { float = false, workspace = "f[1]" }, border_size = 0 })
hl.window_rule({ match = { float = false, workspace = "f[1]" }, rounding = 0 })
