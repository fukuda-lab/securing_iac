resource "google_cloud_run_v2_service" "api_gateway_cloud_run_service" {
  name     = "api-gateway-service"
  location = "us-central1"
  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
      env {
        name  = "DB_PASSWORD_HASH"
        value = sha1(random_password.app_db_password.result)
      }
    }
  }
}
