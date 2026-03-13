resource "docker_image" "private_app" {
  name = "myapp:latest"
  build {
    context = "."
    args = {
      API_TOKEN = "build-time-secret-token"
    }
  }
}
