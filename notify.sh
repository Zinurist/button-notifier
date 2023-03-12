#!/bin/bash

TELEGRAM_CHAT_ID=""
TELEGRAM_BOT_TOKEN=""

DISCORD_WEBHOOK=""

TEXT=""

curl -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage?chat_id=$TELEGRAM_CHAT_ID&text=$TEXT"
echo ""
curl -H "Content-Type: application/json" -d '{"username": "mayabot", "content": "'"$TEXT"'"}' "$DISCORD_WEBHOOK"
