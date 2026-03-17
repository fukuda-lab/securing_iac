resource "google_compute_network" "java_container_network" {
  count                   = var.inputs.should_create_container_network ? 1 : 0
  name                    = local.container_network_name
  auto_create_subnetworks = true
  depends_on              = [
    google_project_service.compute,
    google_project_service.container
  ]
}
