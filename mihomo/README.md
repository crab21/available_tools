docker run -itd --restart always --name mihomo_client -p 53:53 -p 53:53/udp -p 7892:7892 -p 7892:7892/udp -p 7891:7891 -p 19090:19090 -p 19090:19090/udp -v /etc/mihomo/ui:/etc/mihomo/ui -v /Users/k/learn/available_tools/mihomo/config_lb.yaml:/app/config.yaml mihomo:v1.18.7.2