#!/usr/local/bin/bash

# update local copies to be ready to checkout code for review when needed
printf "🧧 co main: \n"
gita super net checkout main
printf "🧧 git fetch: \n"
gita fetch net
printf "🧧 git pull: \n"
gita pull net