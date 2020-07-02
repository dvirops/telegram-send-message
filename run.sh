#!/bin/bash
set -e

if [ -z "$BOT_TOKEN" ]; then
  echo "Missing BOT_TOKEN, can't continue, exiting."
  exit 1
fi

if [ -z "$CHAT_ID" ]; then
  echo "Missing CHAT_ID, can't continue, exiting."
  exit 1
fi

if [ -z "$MESSAGE" ]; then
  MESSAGE="hello world!"
fi

URL="https://api.telegram.org/bot${BOT_TOKEN}/sendMessage"
curl -X POST --data chat_id="${CHAT_ID//\"/}" --data text="${MESSAGE}" --data parse_mode="Markdown" "$URL"
