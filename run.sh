#!/bin/bash
# 完整部署（较慢）：清理 → 生成 → 部署
# 仅本地预览（更快）：hexo g && hexo s
flag=$1
if [ "$flag" == clean ]; then
  hexo clean
elif [ "$flag" == d ]; then
  hexo d
else
  hexo clean
  hexo g
  hexo s
fi
