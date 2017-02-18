## damdo/gobin

:ok_hand: tiny docker image for golang apps

[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/damdo/gobin/blob/master/LICENSE)

### FEATURES:
- FROM scratch, no distro
- runs statically-linked Go bin 
- includes 165 CA certificates for out-bound SSL connections

### PRE-REQUISITES:
- go installed
- docker engine installed

### USAGE:

#### TL;DR
```sh
make MAIN=your_main_filename.go IMAGENAME=your_desired_imagename
```
#### full procedure:
1) we build the static binary
```sh
make gobin MAIN=your_main_filename.go
```

2) we build the docker image
```sh
make dockerbuild IMAGENAME=your_desired_imagename 
```

3) we run the docker image
```sh
make run IMAGENAME=your_desired_imagename
```
