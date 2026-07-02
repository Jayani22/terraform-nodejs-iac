resource "docker_image" "node_api" {
  name = var.image_name

  build {
    context = "../app"
  }
}

resource "docker_container" "node_api" {
  name    = var.container_name
  image   = docker_image.node_api.image_id
  restart = "unless-stopped"

  ports {
    internal = var.internal_port
    external = var.external_port
  }
}