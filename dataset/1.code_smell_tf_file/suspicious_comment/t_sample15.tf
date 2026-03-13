resource "google_kms_crypto_key" "proxy_key" {
  name     = var.proxy_key
  key_ring = google_kms_key_ring.proxy_key_ring.self_link

  lifecycle {
    # If a crypto key gets destroyed, all data encrypted with it is lost.
    prevent_destroy = true
  }
}
