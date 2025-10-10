#!/usr/bin/env bash
set -e

echo "🚀 Setting up project..."

# Check for pre-commit
if ! command -v pre-commit &>/dev/null; then
    echo "⚠️ pre-commit not found. Installing via pip..."
    pip install pre-commit
fi

echo "🪝 Installing pre-commit hooks..."
pre-commit install

# Copy our custom hooks
cp -f .githooks/* .git/hooks/
chmod +x .git/hooks/*

echo "✅ Setup complete! Hooks will auto-install on future checkouts and merges."
