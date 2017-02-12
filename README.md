# Docker image for telegram2irc-bot (Akarin)  

## How to use this image  

Get the docker image by running the following commands:  

~~~bash
docker pull stawidy/telegram2irc-bot
~~~

Start an `telegram2irc-bot` instance:  

~~~bash
docker run --name akarin -e TG_BOT_API_KEY=" " -e TG_GROUP_ID=" " -e IRC_SERVER=" " -e IRC_CHANNEL=" " -e IRC_NICK=" " -d stawidy/telegram2irc-bot
~~~

> :warning: Before this bot can enter any group chats, you will need to configure it with correct permissions. Send the `/setprivacy` command to the `@BotFather`, specify which bot this command is for, then `disable the privacy` so the bot receives all messages sent in the group chat.

### Environment Variables  

`TG_BOT_API_KEY`, the private api key of your telegram bot, you can get the key from the bot `@BotFather`.  

`TG_GROUP_ID`, the group id of your telegram group, you can get it from the bot `@get_id_bot`.  

`IRC_SERVER`, irc server you wish to connect to (default: irc.freenode.net).  

`IRC_CHANNEL`, irc channel you want your bot to join.  

`IRC_NICK`, nickname for your bot to use on irc channel (default: akarin_bot).  

`IRC_PORT`, port of irc server (default: 6667).  

`IRC_PHOTO`, enable photo forwarding (default: true).
