FROM alpine
ENV TZ=Asia/Shanghai
RUN apk --update  --no-cache add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone &&  \
    # apk del tzdata && \
    rm -rf /var/cache/apk/*
# RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.14/main" > /etc/apk/repositories
# RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.14/community" >> /etc/apk/repositories
RUN apk add --update curl bash net-tools libc6-compat ca-certificates && rm -rf /var/cache/apk/*

WORKDIR /app
ENTRYPOINT ["/bin/sh", "-c","date"]