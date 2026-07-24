#!/bin/sh

set -e

FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"
TMP_DIR="/tmp/jetbrains-nerd"
FONT_DIR="$HOME/.local/share/fonts"

echo "[1] Scarico JetBrainsMono Nerd Font..."
mkdir -p "$TMP_DIR"
curl -L "$FONT_URL" -o "$TMP_DIR/JetBrainsMono.zip"

echo "[2] Estraggo i font..."
mkdir -p "$FONT_DIR"
unzip -o "$TMP_DIR/JetBrainsMono.zip" -d "$FONT_DIR"

echo "[3] Aggiorno la cache dei font..."
fc-cache -fv

echo "✔ Installazione completata!"
echo "Puoi ora selezionare 'JetBrainsMono Nerd Font' nel tuo terminale."

