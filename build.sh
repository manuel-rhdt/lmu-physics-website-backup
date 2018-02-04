#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

wget -r -w 1 --convert-links --backup-converted --timestamping --no-parent --http-user=Manuel.Reinhardt --http-password=1742MaRe@ --input=urls -o log

if [ -n "$(git status --porcelain)" ]; then
	git add --all
	git status --porcelain | git commit -F -
	git send-email -1
fi


