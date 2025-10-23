#!/bin/bash

set -e

REPO_URL="https://raw.githubusercontent.com/navidgs/doc2md/main"
INSTALL_DIR="$HOME/bin"

echo "📦 Installing doc2md..."

mkdir -p "$INSTALL_DIR"

# Download the main script
curl -fsSL "$REPO_URL/doc2md" -o "$INSTALL_DIR/doc2md"
chmod +x "$INSTALL_DIR/doc2md"

# Add to PATH if needed
if ! grep -q 'export PATH="$HOME/bin:$PATH"' "$HOME/.zshrc" 2>/dev/null; then
  echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.zshrc"
  echo '✅ Added ~/bin to your PATH in ~/.zshrc'
fi

echo "✅ doc2md installed successfully!"
echo "👉 Restart your terminal or run: source ~/.zshrc"
echo "Then use it like:"
echo "   doc2md ali-baba"
