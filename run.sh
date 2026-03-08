#!/bin/bash
flag=$1
if [ "$flag" == clean ]; then
  hexo clean
elif [ "$flag" == d ]; then
  hexo d
else
  hexo clean &&  hexo g &&   hexo s
fi
