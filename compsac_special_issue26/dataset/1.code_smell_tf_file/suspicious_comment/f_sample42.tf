resource "google_compute_address" "ip_address" {
  # We'll only generate this block if the value of
  # has_labels is 0! Effectively an if statement.
  count = 1 - local.has_labels

  name = var.name
}
