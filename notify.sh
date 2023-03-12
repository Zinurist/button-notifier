#!/bin/bash
CHAT_ID=""
BOT_TOKEN=""
TEXT="bot+notification"
curl -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage?chat_id=$CHAT_ID&text=$TEXT"
echo ""
