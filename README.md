## damdo/gobin

:ok_hand: tiny docker image for golang apps

[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/damdo/gobin/blob/master/LICENSE)

### FEATURES:
- **FROM scratch**, no distro
- runs statically-linked Go bin 
- includes 165 CA certificates for out-bound **SSL** connections
- **super tiny** docker image (this example **~1.72MB**)
- **NEW!** uses multi-stage build

### PRE-REQUISITES:
- ~~go installed~~
- docker engine installed
- no CGO dependencies

### USAGE:

```sh
docker build ... -t your-desired-imagename .
```

now we can run our Docker Image with:
```sh
docker run ... your-desired-imagename
```

### EXAMPLE:

```sh
docker build -t damdo/gobin .
```

now we can run our Docker Image with:
```sh
docker run --rm damdo/gobin
```
