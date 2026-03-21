#!/bin/bash
set -x
script_dir=$(dirname "$0")
cd "$script_dir"
git switch feat/source-code
if [ $? -ne 0 ]; then
  echo "Failed to switch to feat/source-code branch."
  exit 1
fi
git pull origin feat/source-code
if [ $? -ne 0 ]; then
  echo "Failed to pull latest changes from feat/source-code branch."
  exit 1
fi

# write article
article_title=$1
if [ -n "$article_title" ]; then
  hexo new post "$article_title"
fi
