resource "google_compute_firewall" "proxy_firewall" {
  name    = "proxy-firewall${var.suffix}"
  network = "default"

  allow {
    protocol = "tcp"

    ports = [
      var.proxy_ports["epp"],
      var.proxy_ports["whois"],
      var.proxy_ports["health_check"],
      var.proxy_ports["http-whois"],
      var.proxy_ports["https-whois"],
    ]
  }

  source_ranges = [
    "130.211.0.0/22",
    "35.191.0.0/16",
  ]

  target_tags = [
    "proxy-cluster",
  ]
}
