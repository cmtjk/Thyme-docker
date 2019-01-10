# Running [Thyme](https://github.com/sourcegraph/thyme) in Docker

***Prerequesites***: execute `xhost +local:root` to provide the container access to your X-Server, a.k.a your display.
Please read http://wiki.ros.org/docker/Tutorials/GUI if you have security concerns, but as long as you are on your personal computer, there's little to worry about.

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
# Without stop the container
docker-compose exec thyme bash -c "THYME_STATS=true ./entrypoint.sh"
```

`thyme.html` will be saved in `./data`.

