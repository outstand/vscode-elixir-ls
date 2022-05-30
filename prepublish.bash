#!/usr/bin/env bash
set -euo pipefail

tsc -p ./
cp elixir-ls/CHANGELOG.md .

cd elixir-ls
mix deps.get
mix elixir_ls.release -o ../elixir-ls-release
