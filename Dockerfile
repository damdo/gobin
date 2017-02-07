FROM scratch
MAINTAINER https://github.com/damdo

# certs from https://github.com/CenturyLinkLabs/ca-certs-base-image
COPY ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
ADD gobin /app/gobin
CMD ["/app/gobin"]
