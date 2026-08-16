#!/bin/bash
# When the YouTube PWA enters fullscreen, keep it inside its tile (fake fullscreen).
# fullscreenstate "0 2": internal=0 (stays in tile), client=2 (YouTube sees fullscreen).

SOCKET="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"

socat -U - "UNIX-CONNECT:$SOCKET" | while IFS= read -r event; do
    if [[ "$event" == "fullscreen>>1" ]]; then
        class=$(hyprctl activewindow -j 2>/dev/null | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('class',''))" 2>/dev/null)
        if [[ "$class" == "brave-youtube.com__-Default" ]]; then
            hyprctl dispatch fullscreenstate "0 2" >/dev/null 2>&1
        fi
    fi
done
