# Configure the Docker provider
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Create a container
resource "docker_container" "nginx" {
  image = "${docker_image.nginx.latest}"
  name  = "nginx"
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}
