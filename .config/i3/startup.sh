#!/usr/bin/env bash

#i3-msg "workspace 4; exec ayugram-desktop -- %u";
i3-msg "exec kitty; exec firefox; exec ayugram-desktop";
sleep 4
i3-msg "[class=\"firefox\"] move workspace 2; [class=\"AyuGramDesktop\"] move workspace 4";
