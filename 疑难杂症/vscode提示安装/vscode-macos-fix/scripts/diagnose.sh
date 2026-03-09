#!/bin/bash
# VS Code macOS Environment Diagnostic Script
# Usage: ./diagnose.sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "========================================"
echo "VS Code macOS Environment Diagnostic"
echo "========================================"
echo ""

ISSUES=0

# 1. Check code command permissions
echo "1. Checking /usr/local/bin/code permissions..."
if [ -L "/usr/local/bin/code" ]; then
    OWNER=$(ls -la /usr/local/bin/code | awk '{print $3}')
    if [ "$OWNER" = "root" ]; then
        echo -e "${RED}✗ ISSUE: /usr/local/bin/code is owned by root${NC}"
        echo "  Fix: sudo chown $(whoami):admin /usr/local/bin/code"
        ((ISSUES++))
    else
        echo -e "${GREEN}✓ /usr/local/bin/code owned by $OWNER${NC}"
    fi
else
    echo -e "${YELLOW}⚠ WARNING: /usr/local/bin/code not found${NC}"
    ((ISSUES++))
fi
echo ""

# 2. Check shell aliases
echo "2. Checking for problematic aliases..."
ALIASES=$(grep "^alias" ~/.zshrc 2>/dev/null | grep -E "(cd|code)" | grep -v "^#")
if [ -n "$ALIASES" ]; then
    echo -e "${YELLOW}⚠ Found aliases that may hijack commands:${NC}"
    echo "$ALIASES" | while read line; do
        echo "  $line"
    done
else
    echo -e "${GREEN}✓ No problematic aliases found${NC}"
fi
echo ""

# 3. Check PATH for common CLI tools
echo "3. Checking PATH configuration..."
for cmd in kimi claude code; do
    if which $cmd &>/dev/null; then
        echo -e "${GREEN}✓ $cmd: $(which $cmd)${NC}"
    else
        echo -e "${RED}✗ $cmd: not found in PATH${NC}"
        ((ISSUES++))
    fi
done
echo ""

# 4. Check VS Code Helper processes
echo "4. Checking VS Code Helper processes..."
HELPER_COUNT=$(ps aux | grep "Code Helper" | grep -v grep | wc -l)
if [ "$HELPER_COUNT" -gt 10 ]; then
    echo -e "${YELLOW}⚠ WARNING: $HELPER_COUNT Code Helper processes running${NC}"
    echo "  This may indicate performance issues"
else
    echo -e "${GREEN}✓ $HELPER_COUNT Code Helper processes (normal)${NC}"
fi
echo ""

# 5. Check Python version for kimi term
echo "5. Checking Python version..."
PYTHON_VERSION=$(python3 --version 2>/dev/null | awk '{print $2}')
if [ -n "$PYTHON_VERSION" ]; then
    MAJOR=$(echo $PYTHON_VERSION | cut -d. -f1)
    MINOR=$(echo $PYTHON_VERSION | cut -d. -f2)
    if [ "$MAJOR" -ge 3 ] && [ "$MINOR" -ge 14 ]; then
        echo -e "${GREEN}✓ Python $PYTHON_VERSION (supports kimi term)${NC}"
    else
        echo -e "${YELLOW}⚠ Python $PYTHON_VERSION (kimi term requires 3.14+)${NC}"
    fi
else
    echo -e "${RED}✗ Python 3 not found${NC}"
fi
echo ""

# Summary
echo "========================================"
if [ "$ISSUES" -eq 0 ]; then
    echo -e "${GREEN}No critical issues found!${NC}"
else
    echo -e "${RED}Found $ISSUES issue(s) that need attention${NC}"
fi
echo "========================================"
