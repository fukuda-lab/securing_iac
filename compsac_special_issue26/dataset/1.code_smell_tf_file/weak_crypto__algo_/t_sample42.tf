resource "google_cloud_run_v2_service" "weak_run_env" {
  name     = "my-cloud-run-service"
  location = "us-central1"
  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
      env {
        name  = "DB_PASSWORD_HASH"
        value = sha1(random_password.app_password.result)
      }
    }
  }
}
