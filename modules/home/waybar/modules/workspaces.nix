{ c, ... }:
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
      "*" = 0;
    };
    format =
      "[<span color='#${c.base07}'>{name}</span>"
      + "<span color='#${c.base07}'> : </span>"
      + "<span color='#${c.base07}'>{windows}</span>]";
    "format-window-separator" = " ";
    "window-rewrite-default" = " ";
    "format-icons" = {
      "1" = "󰎤 ";
      "2" = "󰎧 ";
      "3" = "󰎪 ";
      "4" = "󰎭 ";
      "5" = "󰎱 ";
      urgent = " ";
      focused = " ";
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
      "class<discord|discord-canary|[Ww]ebcord|[Vv]esktop|com.discordapp.Discord|dev.vencord.Vesktop>" =
        " ";
      "title<.*whatsapp.*>" = " ";
      "title<.*zapzap.*>" = " ";
      "title<.*beeper.*>" = "󰭻 ";
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
      color: @base06;
      border: 1px solid @base02;
      margin: 2px 1px 2px 1px;
      padding: 1px 6px;
    }

    #workspaces button {
      background: transparent;
      color: @base04;
    }

    #workspaces button.focused {
      color: @base06;
    }

    #workspaces button.urgent {
      background: @base09;
    }

    #workspaces button.active {
      background: transparent;
      color: @base09;
    }

    window#waybar .modules-left #workspaces button,
    window#waybar .modules-center #workspaces button,
    window#waybar .modules-right #workspaces button {
      border-bottom: 1px solid transparent;
    }

    window#waybar .modules-left #workspaces button.focused,
    window#waybar .modules-left #workspaces button.active,
    window#waybar .modules-center #workspaces button.focused,
    window#waybar .modules-center #workspaces button.active,
    window#waybar .modules-right #workspaces button.focused,
    window#waybar .modules-right #workspaces button.active {
      border-bottom: 1px solid @base05;
    }

    window#waybar .modules-left #workspaces button.urgent,
    window#waybar .modules-center #workspaces button.urgent,
    window#waybar .modules-right #workspaces button.urgent {
      border-bottom: 1px solid @base08;
    }

  '';
}
