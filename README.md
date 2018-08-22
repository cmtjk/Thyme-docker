# Running [Thyme](https://github.com/sourcegraph/thyme) in Docker

> *Prerequesites*: execute `xhost +local:root` to provide the container access to your X-Server, a.k.a your display.

## Start tracking
```
docker-compose up -d
```

`thyme.json` will be saved in `./data`.

## Stop tracking
```
docker-compose down
```

Alternatively you can run `docker-compose up` and stop with `CTRL-C`.

### Change interval (seconds)
```
THYME_INTERVAL=30 docker-compose up -d
```

## Create statistic
```
THYME_STATS=true docker-compose up
```

`thyme.html` will be saved in `./data`.

