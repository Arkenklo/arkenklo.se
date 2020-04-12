#!/bin/bash

set -e

./build.sh

git reset --soft # Reset git, don't touch any changes
git add public/
git commit -m "Hugo build at $(date +'%H:%M %d %B %Y')"
git push
