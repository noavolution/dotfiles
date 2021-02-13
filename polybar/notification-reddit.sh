#!/bin/sh

URL="https://www.reddit.com/message/unread/.json?feed=783a234ed0123220c0fa6c071cf33194cfdeec1b&user=Masterpommel"
USERAGENT="polybar-scripts/notification-reddit:v1.0 u/Masterpommel"

notifications=$(curl -sf --user-agent "$USERAGENT" "$URL" | jq '.["data"]["children"] | length')

if [ -n "$notifications" ] && [ "$notifications" -gt 0 ]; then
    echo "#1 $notifications"
else
    echo "#2"
fi
