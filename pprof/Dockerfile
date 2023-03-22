# Build the manager binary
FROM golang:1.20.2-alpine as builder

WORKDIR /workspace

# Copy the go source
COPY . .

RUN export CGO_ENABLED=0  \
    && export GOOS=linux \
    && export GO111MODULE=on \
    && apk add --no-cache upx ca-certificates tzdata git \
    && apk add --no-cache graphviz=7.1.0-r1 \
    && apk add --no-cache wrk=4.2.0-r0 \
    && go install -v github.com/google/pprof@latest \
    && git clone https://github.com/brendangregg/FlameGraph.git \
    && export PATH=$PATH:$GOPATH/FlameGraph \
    && go install -v  github.com/uber/go-torch@latest

CMD [ "tail","-f","/dev/null" ]