#!/bin/bash
set -e
echo "Building clean dist/ using git archive..."
rm -rf dist
mkdir -p dist
# git archive exports only tracked files, handles all filenames, excludes .git
git archive HEAD | tar -x -C dist/
echo "Done. dist/ is ready."
