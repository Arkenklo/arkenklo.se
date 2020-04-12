#!/bin/bash

set -e

if [ -d public/ ]; then
    rm -R public/
fi
hugo -D
