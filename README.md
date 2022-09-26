# available_tools

## proto-gen-pb

>usage for generate pb for proto.

### usage:

```markdown
1、docker pull imrcrab/grpc-proto-pb [或使用relase里面搭配的版本]

2、alias protoc='docker run --rm -it -v ${PROTO_PATH}:/build -w /build imrcrab/grpc-proto-pb

<!-- find all proto files -->
3、files=$(find proto -regex ".*\.proto$")

4、
<!-- pb file -->
protoc -I. -Igoogleapis -Iproto --go_out=${GO_OUT} $files
<!-- go grpc pb file -->
protoc -I. -Igoogleapis -Iproto --go-grpc_out=${GO_OUT} $files
<!-- java grpc pb file -->
protoc -I. -Igoogleapis -Iproto --java_out=${JAVA_OUT} $files

<!-- grpc-gateway -->
protoc -I. -Igoogleapis -Iproto --grpc-gateway_out=logtostderr=true:. $files

<!-- grpc-gateway -->docker
<!-- It translates gRPC into RESTful JSON APIs. -->
protoc -I. -Igoogleapis -Iproto 
    --plugin=protoc-gen-grpc-gateway=protoc-gen-grpc-gateway
    --grpc-gateway_out=logtostderr=true:. $files

```


## ...