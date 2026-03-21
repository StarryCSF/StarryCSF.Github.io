#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# check: is true branch?
current_branch=$(git branch --show-current)
if [ "$current_branch" != "feat/source-code" ]; then
  echo -e "${RED}Error: Must run on feat/source-code branch!${NC}"
  echo "Current: $current_branch"
  echo "Run: git switch feat/source-code"
  exit 1
fi

# check: is node_modules found?
if [ ! -d "node_modules" ]; then
  echo -e "${YELLOW}Warning: node_modules not found, running npm install...${NC}"
  npm install
fi

flag=$1

case "$flag" in
  clean)
    echo -e "${GREEN}Cleaning...${NC}"
    hexo clean
    ;;
  d|deploy)
    echo -e "${YELLOW}Ready to deploy to master branch...${NC}"
    read -p "Are you sure? [y/N] " confirm
    if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
      hexo clean && hexo deploy
      echo -e "${GREEN}Deployed! Check: https://starrycsf.github.io${NC}"
    else
      echo "Cancelled."
    fi
    ;;
  g|generate)
    echo -e "${GREEN}Generating static files...${NC}"
    hexo clean && hexo generate
    echo -e "${GREEN}Done! Files in public/${NC}"
    ;;
  s|server)
    echo -e "${GREEN}Starting server (http://localhost:4000)...${NC}"
    hexo server
    ;;
  *)
    # default: clean → generate → server
    echo -e "${GREEN}Development mode: clean → generate → server${NC}"
    hexo clean && hexo generate && hexo server
    ;;
esac
