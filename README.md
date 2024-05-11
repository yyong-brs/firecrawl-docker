## firecrawl-docker

refer: https://github.com/mendableai/firecrawl

## build docker image
```shell
docker build -f Dockerfile -t firecrawl:1.0 .
```

## docker run
```shell
docker run -d -e REDIS_URL=redis://172.28.112.143:26379 -e USE_DB_AUTHENTICATION=false -p 13002:3002 firecrawl:1.0
```
## access api

### test

```shell
curl -X GET http://localhost:13002/test
```
response: Hello, world!
