# Userge Docker

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?template=https%3A%2F%2Fgithub.com%2Fculturecloud%2Fuserge-docker&envs=API_ID%2CAPI_HASH%2CHU_STRING_SESSION%2CBOT_TOKEN%2COWNER_ID%2CLOG_CHANNEL_ID%2CDATABASE_URL&API_IDDesc=Telegram+API+ID+%28get+it+from+https%3A%2F%2Fmy.telegram.org%29&API_HASHDesc=Telegram+API+hash+%28Get+it+from+https%3A%2F%2Fmy.telegram.org%29&HU_STRING_SESSIONDesc=Pyrogram+user+session+string+%28Generate+it+using+https%3A%2F%2Freplit.com%2F%40culturecloud%2Ftg-session-string-generator%29&BOT_TOKENDesc=Bot+API+token+of+the+bot+to+use+with+Userge+like+an+assistant+%28Get+it+from+%40BotFather+on+Telegram%29&OWNER_IDDesc=User+ID+of+the+account+you+want+as+the+owner+of+the+assistant+bot.+%28You+can+use+%40getidsbot+on+Telegram%29&LOG_CHANNEL_IDDesc=ID+of+the+channel+you+want+to+use+as+the+log+channel+for+Userge+%28Send+a+test+message+to+the+channel+and+forward+that+message+to+%40getidsbot+on+Telegram+to+get+the+channel+ID%29&DATABASE_URLDesc=MongoDB+URL+%28Get+it+from+https%3A%2F%2Fcloud.mongodb.com%29)

## Notes

* Your GitHub account must be 30 days or older to deploy apps on Railway.
* After deploying, every time you need to add new vars, **YOU MUST DELETE YOUR OLD DEPLOYMENT FIRST**. Or else, your Telegram user session will be revoked due to the duplication caused by the temporary parallel deployments of Railway and you need to regenerate the session string.
