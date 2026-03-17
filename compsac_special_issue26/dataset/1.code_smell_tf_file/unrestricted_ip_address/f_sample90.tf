resource "google_compute_url_map" "web-map" {
  name            = "tf-web-map"
  default_service = google_compute_backend_service.www-service.self_link

  host_rule {
    hosts        = ["*"]
    path_matcher = "tf-allpaths"
  }
}
