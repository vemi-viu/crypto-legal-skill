#!/usr/bin/env bash
# crypto-legal-skill installer
# Usage: curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/crypto-legal-skill/main/install.sh | bash

set -e

SKILL_NAME="crypto-legal"
REPO_URL="https://github.com/YOUR_USERNAME/crypto-legal-skill"
INSTALL_DIR="${HOME}/.claude/skills/${SKILL_NAME}"

echo "Installing crypto-legal-skill..."

# Create skills directory if it doesn't exist
mkdir -p "${HOME}/.claude/skills"

# Clone or update
if [ -d "$INSTALL_DIR" ]; then
  echo "Updating existing installation..."
  git -C "$INSTALL_DIR" pull
else
  echo "Cloning crypto-legal-skill..."
  git clone "$REPO_URL" "$INSTALL_DIR"
fi

echo ""
echo "✅ crypto-legal-skill installed to: $INSTALL_DIR"
echo ""
echo "Next step — add this line to your CLAUDE.md or SKILL.md:"
echo ""
echo "  - crypto-legal: ~/.claude/skills/crypto-legal/skill/SKILL.md"
echo ""
echo "Then ask your agent:"
echo "  'What legal structure should I use for my Solana protocol?'"
echo "  'Is my token a security?'"
echo "  'I'm building from Pakistan — how do I structure my project?'"
