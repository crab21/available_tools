ARG GOLANG_VERSION=latest
FROM golang:${GOLANG_VERSION}-bullseye as build
ARG PROTOC_VERSION=3.20.0
ARG ENVOYPROXY=latest
ARG GO_SWAGGER=latest
ARG GOLANG_MOCK=latest
ARG GOLANGCI=latest
ARG GRPC_ECOSYSTEM=latest
ARG GRPC_GO=latest
ARG PROTOCOLBUFFERS=latest
WORKDIR /opt

ADD . .

RUN go install github.com/envoyproxy/protoc-gen-validate@${ENVOYPROXY} && \
    go install github.com/go-swagger/go-swagger/cmd/swagger@${GO_SWAGGER} && \
    go install github.com/golang/mock/mockgen@${GOLANG_MOCK} && \
    go install github.com/golangci/golangci-lint/cmd/golangci-lint@${GOLANGCI} && \
    go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway@${GRPC_ECOSYSTEM} && \
    go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@${GRPC_ECOSYSTEM} && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@${GRPC_GO} &&\
    go install google.golang.org/protobuf/cmd/protoc-gen-go@${PROTOCOLBUFFERS} 


ARG GOLANG_VERSION=latest
FROM golang:${GOLANG_VERSION}-bullseye

COPY --from=build /go/bin/ /go/bin/
COPY --from=build /opt/protoc /usr/local/bin/
RUN chmod -R +x /usr/local/bin
RUN chmod -R +x /go/bin
CMD [ "tail","-f","/dev/null" ]
