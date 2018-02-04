#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

wget -r --convert-links --backup-converted --timestamping -np --http-user=Manuel.Reinhardt --http-password=1742MaRe@ --input=urls -o log

git add --all
git status --porcelain | git commit -F -
