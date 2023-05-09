resource "docker_image" "image" {
  name         = var.image_name
}

resource "docker_container" "container" {
  image = docker_image.image.image_id
  name  = var.container_name

  ports {
    internal = 80
    external = 8000
  }
}
