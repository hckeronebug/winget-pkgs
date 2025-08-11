#!/bin/bash
set -euo pipefail

ID="POC-EXECUTED-$(date +%s)-$RANDOM"
echo "$ID"                      # prints to job log
echo "$ID" > /tmp/$ID.txt       # create a local file on runner
echo "POC created file: /tmp/$ID.txt"
echo "Workspace top entries:"
ls -la | head -n 40
