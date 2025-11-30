#!/usr/bin/env bash

set -euo pipefail

echo "[start-dev] Installing dependencies..."
npm install

echo "[start-dev] Launching Astro dev server..."
npm run dev -- --host

