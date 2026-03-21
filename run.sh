#!/bin/bash
set -ex
flag=$1
if [ "$flag" == clean ]; then
  hexo clean
elif [ "$flag" == d ]; then
  git switch master
  hexo d
else
  hexo clean &&  hexo g &&  hexo s
fi
