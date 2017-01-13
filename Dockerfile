FROM scratch
MAINTAINER https://github.com/damianodonati

# certs from https://github.com/CenturyLinkLabs/ca-certs-base-image
COPY ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
ADD gobin /gobin
CMD ["/gobin"]
