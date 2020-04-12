#!/bin/bash

set -e

if [ -d public/ ]; then
    rm -R public/
fi
hugo -D

git reset --soft # Reset git, don't touch any changes
git add public/
git commit -m "Hugo build at $(date +'%H:%M %d %B %Y')"
#git push
