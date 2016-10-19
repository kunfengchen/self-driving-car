## Docker Documentation
https://docs.docker.com/

## Dockerfile based on kunfengchen:u14-indigo-autoware

## Using Dockerfile

In sefl-driving-car/docker

### Build (Take about an hour?)
```
$ sh docker-build.sh
```
### Run
```
$ sh docker-run.sh

(You are in the container now)
```

#### Run Android Studio
```
$ studio.sh
(You will go through the Setup Wizard the first time)
```

#### Run Autoware
```
$ cd ~/Autoware/ros
$ ./run
```
