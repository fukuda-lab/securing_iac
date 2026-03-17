resource "google_compute_project_metadata" "dummy_key" {
  project = var.project_id
  metadata = {
    ssh-keys = <<EOF
      foo:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILg6UtHDNyMNAh0GjaytsJdrUxjtLy3APXqZfNZhvCeT foo
    EOF
  }
}
