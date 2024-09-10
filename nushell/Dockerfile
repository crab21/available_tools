FROM alpine:edge

WORKDIR /app
ARG NUSHELL_VERSION

RUN apk update && \
    apk add --no-cache curl wget git nushell=${NUSHELL_VERSION}

CMD [ "tail","-f","/dev/null" ]