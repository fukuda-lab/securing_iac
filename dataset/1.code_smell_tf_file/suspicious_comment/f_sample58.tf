resource "google_compute_address" "ip_address_beta" {
  # And this block is only present if we have
  # at least one entry, effectively an elif.
  count = local.has_labels

  name   = var.name
  labels = var.labels
}
