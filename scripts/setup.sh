#!/usr/bin/env bash
set -e

echo "Setting up project..."

# Configure Git to use .githooks as hooks directory
git config core.hooksPath .githooks

# Install pre-commit if not present
if ! command -v pre-commit &>/dev/null; then
    echo "pre-commit not found. Installing via pip..."
    pip install pre-commit
fi

echo "Installing pre-commit hooks..."
pre-commit install

echo "Setup complete! Hooks will auto-install on future branch checkouts."
