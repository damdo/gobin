MAIN = main.go
default: gobin dockerbuild run
gobin: $(MAIN)
	GOOS=linux GOARCH=amd64 go build -o $@ -ldflags "-w -s" $<
dockerbuild:
	docker build -t gobin .	
.PHONY: clean
clean:
	rm -f gobin
run:
	docker run --rm -it gobin
