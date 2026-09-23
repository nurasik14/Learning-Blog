#!/usr/bin/env bash
set -euo pipefail

# ============================================================
# Hugo Blog Update Script for Linux
# ============================================================
# Copies Obsidian notes → Hugo content, builds, and deploys.
# ============================================================

# --- Config ---
OBSIDIAN_VAULT="$HOME/ProgressDoc/ProgressDoc"
PROJECT_DIR="$HOME/Projects/Learning-Blog"
CONTENT_DIR="$PROJECT_DIR/content/posts"
TEMP_DIR="$PROJECT_DIR/temp_posts"

# --- Colors ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}=== Hugo Blog Update ===${NC}"

# Confirm
read -rp "Are you sure you want to update the blog? (y/n): " confirm
if [[ ! "$confirm" =~ ^[Yy]([Ee][Ss])?$ ]]; then
    echo -e "${RED}Aborted.${NC}"
    exit 0
fi

# Check Python
PYTHON_CMD=""
for cmd in python3 python py; do
    if command -v "$cmd" &>/dev/null; then
        PYTHON_CMD="$cmd"
        break
    fi
done

if [[ -z "$PYTHON_CMD" ]]; then
    echo -e "${RED}Error: Python is not installed or not in PATH.${NC}"
    exit 1
fi

# Clean temp
rm -rf "$TEMP_DIR"
mkdir -p "$TEMP_DIR"

# Copy posts (exclude .obsidian, .trash, attachments)
echo -e "${GREEN}Copying posts from Obsidian vault...${NC}"
rsync -av --exclude='.obsidian' --exclude='.trash' --exclude='attachments' \
    "$OBSIDIAN_VAULT/" "$TEMP_DIR/" > /dev/null 2>&1 || true

# Run image processor (if images exist)
if [[ -d "$OBSIDIAN_VAULT/attachments" ]] && ls "$TEMP_DIR"/*.md &>/dev/null; then
    echo -e "${GREEN}Processing images...${NC}"
    "$PYTHON_CMD" "$PROJECT_DIR/scripts/images.py" || true
fi

# Mirror to Hugo content
echo -e "${GREEN}Syncing to Hugo...${NC}"
rm -rf "$CONTENT_DIR"
mkdir -p "$CONTENT_DIR"
cp -r "$TEMP_DIR"/* "$CONTENT_DIR/" 2>/dev/null || true

# Clean temp
rm -rf "$TEMP_DIR"

# Build
echo -e "${GREEN}Building Hugo site...${NC}"
cd "$PROJECT_DIR"
hugo server --gc --minify 2>&1 | tail -5


