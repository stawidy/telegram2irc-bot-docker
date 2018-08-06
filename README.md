# Docker image for telegram2irc-bot (Akarin)  

## How to use this image  

```
docker run --name=orzbotd -d -v <ABSOLUTE_PATH_TO_THE_CONFIGURATION_FOLDER>:/home/orzbot/config stawidy/telegram2irc-bot
```

```
docker logs orzbotd      # check log
docker stop orzbotd      # stop bot
docker start orzbotd     # start bot
```