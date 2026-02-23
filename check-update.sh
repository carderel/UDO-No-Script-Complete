#!/bin/bash
# UDO Update Checker

CURRENT=$(cat UDO/VERSION 2>/dev/null || echo "unknown")
LATEST=$(curl -fsSL https://raw.githubusercontent.com/carderel/UDO-No-Script/main/UDO/VERSION 2>/dev/null || echo "error")

echo "Current: $CURRENT"
echo "Latest:  $LATEST"

if [ "$LATEST" = "error" ]; then
  echo "Could not check for updates."
elif [ "$CURRENT" != "$LATEST" ]; then
  echo "Update available at: https://github.com/carderel/UDO-No-Script/releases"
else
  echo "You're up to date."
fi
