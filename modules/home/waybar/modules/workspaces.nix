{
  settings."hyprland/workspaces" = {
    "disable-scroll" = true;
    "all-outputs" = true;
    "warp-on-scroll" = false;
    "sort-by-number" = true;
    "show-special" = false;
    "on-click" = "activate";
    "on-scroll-up" = "hyprctl dispatch workspace e+1";
    "on-scroll-down" = "hyprctl dispatch workspace e-1";
    "persistent-workspaces" = {
      "*" = 5;
    };
    format = "{icon} {windows}";
    "format-window-separator" = " ";
    "window-rewrite-default" = " ";
    "format-icons" = {
      "1" = "󰎤";
      "2" = "󰎧";
      "3" = "󰎪";
      "4" = "󰎭";
      "5" = "󰎱";
      urgent = "";
      focused = "";
      default = " ";
    };
    "window-rewrite" = {
      "title<.*amazon.*>" = " ";
      "title<.*reddit.*>" = " ";
      "title<.*[Hh]elium.*>" = " ";
      "class<firefox|org.mozilla.firefox|librewolf|floorp|mercury-browser|[Cc]achy-browser>" = " ";
      "class<zen>" = "󰰷 ";
      "class<waterfox|waterfox-bin>" = " ";
      "class<microsoft-edge>" = " ";
      "class<Chromium|Thorium|[Cc]hrome>" = " ";
      "class<helium>" = " ";
      "class<brave-browser>" = "🦁 ";
      "class<vivaldi|vivaldi-stable>" = "󰖟 ";
      "class<tor browser>" = " ";
      "class<firefox-developer-edition>" = "🦊 ";
      "class<kitty>" = "󰄛 ";
      "class<konsole>" = " ";
      "class<kitty-dropterm>" = " ";
      "class<com.mitchellh.ghostty>" = " 󰊠";
      "class<org.wezfurlong.wezterm>" = " ";
      "class<Warp|warp|dev.warp.Warp|warp-terminal>" = "󰰭 ";
      "class<[Tt]hunderbird|[Tt]hunderbird-esr>" = " ";
      "class<eu.betterbird.Betterbird>" = " ";
      "title<.*gmail.*>" = "󰊫 ";
      "class<[Tt]elegram-desktop|org.telegram.desktop|io.github.tdesktop_x64.TDesktop>" = " ";
      "class<discord|discord-canary|[Ww]ebcord|[Vv]esktop|com.discordapp.Discord|dev.vencord.Vesktop>" = " ";
      "title<.*whatsapp.*>" = " ";
      "title<.*zapzap.*>" = " ";
      "title<.*messenger.*>" = " ";
      "title<.*facebook.*>" = " ";
      "class<[Ss]ignal|signal-desktop|org.signal.Signal>" = "󰍩 ";
      "title<.*Signal.*>" = "󰍩 ";
      "title<.*ChatGPT.*>" = "󰚩 ";
      "title<.*deepseek.*>" = "󰚩 ";
      "title<.*qwen.*>" = "󰚩 ";
      "class<subl>" = "󰅳 ";
      "class<slack>" = " ";
      "class<mpv>" = " ";
      "class<celluloid|Zoom>" = " ";
      "class<Cider>" = "󰎆 ";
      "title<.*Picture-in-Picture.*>" = " ";
      "title<.*youtube.*>" = " ";
      "class<vlc>" = "󰕼 ";
      "class<[Kk]denlive|org.kde.kdenlive>" = "🎬 ";
      "title<.*Kdenlive.*>" = "🎬 ";
      "title<.*cmus.*>" = " ";
      "class<[Ss]potify>" = " ";
      "class<virt-manager>" = " ";
      "class<.virt-manager-wrapped>" = " ";
      "class<remote-viewer|virt-viewer>" = " ";
      "class<virtualbox manager>" = "💽 ";
      "title<virtualbox>" = "💽 ";
      "class<remmina|org.remmina.Remmina>" = "🖥️ ";
      "class<VSCode|code|code-url-handler|code-oss|codium|codium-url-handler|VSCodium>" = "󰨞 ";
      "class<dev.zed.Zed>" = "󰵁";
      "class<codeblocks>" = "󰅩 ";
      "title<.*github.*>" = " ";
      "class<mousepad>" = " ";
      "class<libreoffice-writer>" = " ";
      "class<libreoffice-startcenter>" = "󰏆 ";
      "class<libreoffice-calc>" = " ";
      "title<.*nvim ~.*>" = " ";
      "title<.*vim.*>" = " ";
      "title<.*nvim.*>" = " ";
      "title<.*Discord.*>" = " ";
      "title<.*figma.*>" = " ";
      "title<.*jira.*>" = " ";
      "class<jetbrains-idea>" = " ";
      "class<obs|com.obsproject.Studio>" = " ";
      "class<polkit-gnome-authentication-agent-1>" = "󰒃 ";
      "class<nwg-look>" = " ";
      "class<[Pp]avucontrol|org.pulseaudio.pavucontrol>" = "󱡫 ";
      "class<steam>" = " ";
      "class<thunar|nemo>" = "󰝰 ";
      "class<Gparted>" = "";
      "class<gimp>" = " ";
      "class<emulator>" = "📱 ";
      "class<android-studio>" = " ";
      "class<org.pipewire.Helvum>" = "󰓃";
      "class<localsend>" = "";
      "class<PrusaSlicer|UltiMaker-Cura|OrcaSlicer>" = "󰹛";
      "class<io.github.kolunmi.Bazaar>" = " ";
      "title<^Bazaar$>" = " ";
      "class<com.gabm.satty>" = " ";
      "title<^satty$>" = " ";
      "class<[Bb]ox[Bb]uddy|io.github.dvlv.boxbuddy|io.github.dvlv.BoxBuddy>" = " ";
      "title<.*BoxBuddy.*>" = " ";
      "title<Hyprland Keybinds>" = " ";
      "title<Niri Keybinds>" = " ";
      "title<BSPWM Keybinds>" = " ";
      "title<DWM Keybinds>" = " ";
      "title<Emacs Leader Keybinds>" = " ";
      "title<Kitty Configuration>" = " ";
      "title<WezTerm Configuration>" = " ";
      "title<Yazi Configuration>" = " ";
      "title<Cheatsheets Viewer>" = " ";
      "title<Documentation Viewer>" = " ";
      "title<^Wallpapers$>" = " ";
      "title<^Video Wallpapers$>" = " ";
      "title<^qs-wlogout$>" = " ";
    };
  };

  style = ''
    #workspaces {
      background: @base01;
      margin: 4px 0px 4px 4px;
      border: 1px solid @base02;
    }

    #workspaces button {
      all: initial;
      min-width: 0;
      box-shadow: inset 0 -3px transparent;
      padding: 1px 3px;
      color: @base04;
    }

    #workspaces button.focused {
      color: @base06;
    }

    #workspaces button.urgent {
      background: @base09;
    }

    #workspaces button.active {
      border-bottom: 0.5px solid @base09;
      box-shadow: 0 0 0 0.5px @base09;
      color: @base09;
    }
  '';
}
