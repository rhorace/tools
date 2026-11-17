#!/bin/bash

set -e

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

git add .

if git diff --cached --quiet; then
    echo "Aucune modification à enregistrer."
    exit 0
fi

git commit -m "commit_$DATE"

git push

echo "Commit et push terminés !"

