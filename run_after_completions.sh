#!/usr/bin/env bash

# rebuilds zsh completions on every apply so the shell doesn't do it at start

mkdir -p ~/.zsh/completion

for tool in docker kubectl devbox eksctl helm; do
  command -v $tool >/dev/null || continue
  $tool completion zsh > ~/.zsh/completion/_$tool
done

if command -v bun >/dev/null; then
  SHELL=zsh bun completions > ~/.zsh/completion/_bun
fi
