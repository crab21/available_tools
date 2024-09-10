FROM alpine
ENV TZ=Asia/Shanghai
WORKDIR /app
RUN apk --update  --no-cache add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone &&  \
    apk add --no-cache upx ca-certificates tzdata git && \
    # apk del tzdata && \
    rm -rf /var/cache/apk/* && \
    apk add --no-cache wget zip && \
    wget -v https://github.com/MetaCubeX/mihomo/releases/download/v1.18.7/mihomo-linux-arm64-v1.18.7.gz -O /app/mihomo.gz && \
    gunzip -d -c /app/mihomo.gz > /app/mihomo && \
    mkdir -p ~/.config/mihomo && \
    wget -v https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geoip.dat -O ~/.config/mihomo/GeoIP.dat && \
    wget -v https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geosite.dat -O ~/.config/mihomo/GeoSite.dat && \
    chmod +x /app/mihomo
    

CMD ["./mihomo", "-f", "config.yaml"]