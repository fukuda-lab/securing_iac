resource "google_dns_record_set" "dns_record" {
  project      = var.gcp_project_id
  managed_zone = var.gcp_project_name
  name         = "*.${var.dns_name}"
  type         = "A"
  ttl          = 300
  rrdatas      = ["${google_compute_global_address.udmi_global_address.address}"]
}
