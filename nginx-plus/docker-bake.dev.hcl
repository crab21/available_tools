// docker-bake.dev.hcl
// https://docs.docker.com/reference/cli/docker/buildx/bake/


variable NGINX_1_27_1 {
  default = "1.27.1"
}

group "default" {
  targets = ["nginx-brotli"]
}


target "nginx-brotli" {
  dockerfile = "Dockerfile"
  tags = ["imrcrab/nginx-brotli:1.27.1x"]
  contexts = {
    nginx = "docker-image://nginx:${NGINX_1_27_1}"
  }
  args = {
    NGINX_VERSION = NGINX_1_27_1
  }
  platforms = ["linux/amd64"]
}