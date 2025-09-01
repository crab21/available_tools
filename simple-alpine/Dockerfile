FROM alpine
ENV TZ=Asia/Shanghai
RUN apk add --update curl bash net-tools libc6-compat ca-certificates jq yq && rm -rf /var/cache/apk/*

WORKDIR /app
ENTRYPOINT ["/bin/sh", "-c","date"]