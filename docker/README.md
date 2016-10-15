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

## Using the pre-built image (3-4 G) in dockerhub (without building the Dockerfile)
```
$ rocker pull kunfengchen/sdc:u14-ros-indigo-autoware
$ sh docker-run.sh
```
