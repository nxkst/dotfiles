#!/usr/bin/env bash

status=$(warp-cli status 2>/dev/null)

if echo "$status" | grep -qi "Connected"; then
    echo "%{F#3e8fb0}󰖂 WARP%{F-}"
elif echo "$status" | grep -qi "Connecting"; then
    echo "%{F#f6c177}󱎴 CONNECTING%{F-}"
else
    echo "%{F#eb6f92}󰅛 OFF%{F-}"
fi
