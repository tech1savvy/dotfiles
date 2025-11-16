return {
  "mikesmithgh/kitty-scrollback.nvim",
  enabled = true,
  lazy = true,
  cmd = {
    "KittyScrollbackGenerateKittens",
    "KittyScrollbackCheckHealth",
    "KittyScrollbackGenerateCommandLineEditing",
  },
  event = { "User KittyScrollbackLaunch" },
  -- version = '*', -- latest stable version, may have breaking changes if major version changed
  -- version = '^6.0.0', -- pin major version, include fixes and features that do not have breaking changes
  config = function()
    require("kitty-scrollback").setup({
      callbacks = nil,
      keymaps_enabled = true,
      restore_options = false,
      highlight_overrides = nil,
      status_window = {
        enabled = true,
        style_simple = false,
        autoclose = false,
        show_timer = false,
        icons = {
          kitty = "󰄛",
          heart = "󰣐", -- variants 󰣐 |  |  | ♥ |  | 󱢠 | 
          nvim = "", -- variants  |  |  | 
        },
      },
      paste_window = {
        highlight_as_normal_win = nil,
        filetype = nil,
        hide_footer = false,
        winblend = 0,
        winopts_overrides = nil,
        footer_winopts_overrides = nil,
        yank_register = "",
        yank_register_enabled = true,
      },
      kitty_get_text = {
        ansi = true,
        extent = "all",
        clear_selection = true,
      },
      checkhealth = false,
      visual_selection_highlight_mode = "darken",
    })
  end,
}
