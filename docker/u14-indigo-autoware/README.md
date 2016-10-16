## Docker Documentation
https://docs.docker.com/

## Using Dockerfile

In sefl-driving-car/docker

### Build (Take about an hour?)
```
$ sh docker-build.sh
```
### Run
```
$ sh docker-run.sh

(You are in the docker image now)
$ cd ~/Autoware/ros
$ ./run

```

## Using the pre-built image (3.6G) in dockerhub (without building the Dockerfile)
```
$ docker pull kunfengchen/u14-ros-indigo-autoware
$ sh docker-run.sh

(You are in the docker image now)
$ cd ~/Autoware/ros
$ ./run
```

## X Display back from docker image
### OSX
Ref: https://github.com/docker/docker/issues/8710

1. In a host terminal:
  ```
  socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
  ```

2. Change the docker-run.sh DISPLAY line to `--env="DISPLAY=192.168.99.1:0”` (where 192.168.99.1 is from `ifconfig vboxnet0` in  a host terminal)

3. Restart `./docker-run.sh`
