{ ... }:
{
  programs.retroarch = {
    enable = true;

    cores = {
      mgba.enable = true;
    };

    settings = {
      # Video
      video_driver = "vulkan";
      video_smooth = "true";
      video_fullscreen = "false";
      video_window_show_decorations = "true";

      # OSD
      fps_show = "true";
      memory_show = "false";
      framecount_show = "false";

      # Audio
      audio_enable = "true";

      # Menu
      menu_driver = "xmb";
      menu_pause_libretro = "true";

      # Save
      rewind_enable = "true";
      rewind_buffer_size = "50";
      rewind_granularity = "5";
      savestate_auto_index = "true";

      # Paths
      rgui_browser_directory = "~/Games/roms/";

      # Input
      input_player1_a = "f";
      input_player1_b = "d";
      input_player1_y = "c";
      input_player1_x = "v";
      input_player1_start = "enter";
      input_player1_select = "rshift";
      input_player1_l = "q";
      input_player1_r = "w";
      # vim motions
      input_player1_left = "h";
      input_player1_right = "l";
      input_player1_up = "k";
      input_player1_down = "j";
      input_player1_l2 = "nul";
      input_player1_r2 = "nul";
      input_player1_l3 = "nul";
      input_player1_r3 = "nul";
      # Hotkeys
      input_menu_toggle = "f1";
      input_hold_fast_forward = "space";
      input_toggle_fast_forward = "nul";
      input_reset = "nul";
      input_frame_advance = "nul";
      input_toggle_fullscreen = "nul";

      # Misc
      pause_nonactive = "true";
      fastforward_ratio = "2.0";
    };
  };
}
