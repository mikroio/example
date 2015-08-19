FROM gliderlabs/alpine:3.1
CMD ["/bin/app"]

COPY . /go/src/github.com/mikroio/example
RUN apk-install -t build-deps go git mercurial \
	&& cd /go/src/github.com/mikroio/example \
	&& export GOPATH=/go \
	&& go get \
	&& go build -o /bin/app \
	&& rm -rf /go \
	&& apk del --purge build-deps
