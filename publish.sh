#!/bin/bash
# 練習用デモを GitHub Pages（https://smk2project-ai.github.io/ita-demo/）に出す。index.html を直したら ./publish.sh "変更の説明"
set -e
cd "$(dirname "$0")"
git add index.html publish.sh
if git diff --cached --quiet; then echo "変更なし"; exit 0; fi
git commit -q -m "${1:-画面を更新}" -m "Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>"
git push -q origin main
echo "公開しました: https://smk2project-ai.github.io/ita-demo/"
