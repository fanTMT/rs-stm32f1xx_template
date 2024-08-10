#!/bin/bash
# Program:
#   发布Hugo生成文件到GitHub Pages
set -e

printf "\033[0;32m  updates to Gitee... \033[0m\n"

git add .
# Commit changes.
msg="于 $(date +'%Y-%m-%d %H:%M:%S') 上传"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

git pull --rebase origin main
# Push source and build repos.
git push -f origin main
