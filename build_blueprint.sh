#!/bin/bash

BANT="$(cd "$(dirname "$0")" && pwd)"

echo "==> Compiling blueprint..."
cd "$BANT/blueprint/src" && plastex -c plastex.cfg web.tex

echo "==> Starting local server..."
echo "    Open http://localhost:8000 in your browser"
cd "$BANT/blueprint/web" && python3 -m http.server 8000
