// docker-bake.dev.hcl
// https://docs.docker.com/reference/cli/docker/buildx/bake/

variable NUSHELL_VERSION_97 {
  default = "0.97.1-r0"
}


group "default" {
  targets = ["nushell"]
}


target "nushell" {
  dockerfile = "Dockerfile"
  args = {
    NUSHELL_VERSION = NUSHELL_VERSION_97
  }
  tags = ["nushell-docker:v1"]
  no-cache = true
}