#!/bin/bash

# Check if warp-cli is installed and WARP is connected
if command -v warp-cli &> /dev/null; then
    status=$(warp-cli status 2>/dev/null)
    if echo "$status" | grep -q "Connected"; then
        echo "WARP ON"
    else
        echo "WARP OFF"
    fi
else
    echo "WARP ?"
fi
