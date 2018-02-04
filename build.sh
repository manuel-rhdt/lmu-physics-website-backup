#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

wget -kr --timestamping -np --http-user=Manuel.Reinhardt --http-password=1742MaRe@ --input=urls
