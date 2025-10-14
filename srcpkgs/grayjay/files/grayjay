#!/bin/sh

APP_DIR="$HOME/.local/share/grayjay"

# Check if app is already installed in user directory
if [ ! -d "$APP_DIR" ]; then
    echo "First run - installing Grayjay to $APP_DIR"
    mkdir -p "$APP_DIR"
    cp -r /usr/lib/grayjay/* "$APP_DIR/"
    chmod u+w -R "$APP_DIR"
fi

exec sh -c "cd '$APP_DIR' && exec ./Grayjay \"\$@\"" -- "$@"
