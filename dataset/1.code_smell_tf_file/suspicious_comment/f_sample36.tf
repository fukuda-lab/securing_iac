resource "google_compute_instance" "workspace" {
  # For firewall rules later
  tags = ["h2o-workspace", "public"]
}
