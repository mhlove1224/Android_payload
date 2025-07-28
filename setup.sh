#!/bin/bash

echo "🔧 Starting MH Zone Environment Setup..."

# Ask for storage permission
termux-setup-storage

# Update & upgrade packages
echo "📦 Updating Termux..."
pkg update -y && pkg upgrade -y

# Install curl
if ! command -v curl > /dev/null; then
    echo "📥 Installing curl..."
    pkg install curl -y
fi

# Install git
if ! command -v git > /dev/null; then
    echo "📥 Installing git..."
    pkg install git -y
fi

# Install python
if ! command -v python > /dev/null; then
    echo "📥 Installing python..."
    pkg install python -y
fi

# Add x11-repo if not exists
if [ ! -d "$PREFIX/var/lib/pkg/x11-repo" ]; then
    echo "➕ Adding x11-repo..."
    pkg install x11-repo -y
fi

# Add unstable-repo if not exists
if [ ! -d "$PREFIX/var/lib/pkg/unstable-repo" ]; then
    echo "➕ Adding unstable-repo..."
    pkg install unstable-repo -y
fi

# Install qrencode
if ! command -v qrencode > /dev/null; then
    echo "📥 Installing qrencode..."
    pkg install qrencode -y
fi

# Install metasploit
if ! command -v msfconsole > /dev/null; then
    echo "📥 Installing Metasploit (will take time)..."
    pkg install metasploit -y
fi

# Final Confirmation
clear
echo ""
echo -e "\033[0;32m✅ All Setup Done Successfully!"
echo -e "📦 Tools Installed: metasploit, qrencode, curl, git, python"
echo -e "📁 Storage Permission Granted"
echo -e "💀 You're Ready to Launch MH Zone Now!\033[0m"
