#!/usr/bin/env bash

set -euo pipefail

echo "[deploy] Cleaning dist..."
rm -rf dist

echo "[deploy] Installing dependencies..."
npm install

echo "[deploy] Building..."
npm run build

echo "[deploy] Build complete. Push the latest commit and GitHub Actions will publish to Pages."

