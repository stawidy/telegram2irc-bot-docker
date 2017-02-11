#!/bin/sh

set -e

cd /telegram2irc-bot

cp config.example.js config.js
cp nicks.json.example nicks.json

sed -i  -e 's/exports.tg_bot_api_key = '.*';/exports.tg_bot_api_key = "'$TG_BOT_API_KEY'";/' \
        -e 's/exports.tg_group_id = 0;/exports.tg_group_id = "'$TG_GROUP_ID'";/' \
        -e 's/exports.irc_server = '.*';/exports.irc_server = "'$IRC_SERVER'";/' \
        -e 's/exports.irc_channel = '.*';/exports.irc_channel = "'$IRC_CHANNEL'";/' \
        -e 's/exports.irc_nick = '.*';/exports.irc_nick = "'$IRC_NICK'";/' \
        -e 's/exports.irc_port = 6667;/exports.irc_port = '$IRC_PORT';/' \
        -e 's/exports.irc_photo_forwarding_enabled = false;/exports.irc_photo_forwarding_enabled = '$IRC_PHOTO';/' \
        config.js

exec node main.js "$@"
