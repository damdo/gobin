## damianodonati/gobin

tiny docker image:
- FROM scratch, no distro
- runs statically-linked Go bin 
- includes 165 CA certificates for out-bound SSL connections

### PRE-REQUISITES:
- go installed
- docker engine installed

### USAGE:
1) we build the static binary
```sh
make MAIN=your_main_filename.go
```

2) we build the docker image
```sh
make dockerbuild 
```

3) we run the docker image
```sh
make run
```
