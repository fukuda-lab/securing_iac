resource "google_compute_http_health_check" "health" {
  name               = "armor-healthcheck"
  request_path       = "/"
  check_interval_sec = 1
  timeout_sec        = 1
}
