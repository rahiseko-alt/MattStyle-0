#!/bin/sh
# 引き継ぎメモの直近2件だけを読み込む。
# 1件は "## " で始まる見出しで区切られる。3件目の見出しに達したら止める。
f="$CLAUDE_PROJECT_DIR/docs/agents/handover.md"
[ -f "$f" ] || exit 0
awk '/^## /{n++} n>2{exit} {print}' "$f"
