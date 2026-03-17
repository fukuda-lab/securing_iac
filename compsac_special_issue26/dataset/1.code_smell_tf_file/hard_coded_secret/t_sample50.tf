provider "docker" {
  registry_auth {
    address  = "hub.docker.com"
    username = "testuser"
    password = "MySuperSecurePassword123!"
  }
}
