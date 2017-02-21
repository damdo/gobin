MAIN=main.go
IMAGENAME=gobinimg
default: gobin dockerbuild

gobin:
	GOOS=linux GOARCH=amd64 go build -o $@ -ldflags "-w -s" $(MAIN)

dockerbuild:
	docker build -t $(IMAGENAME) .

run:
	docker run --rm -it $(IMAGENAME)

.PHONY: clean
clean:
	rm -f gobin
