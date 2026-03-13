resource "google_redis_instance" "cache" {
  // TODO: remove when replica_count, etc is generally available
  provider           = google-beta
  project            = var.project_id
  region             = var.region
  name               = var.name
  tier               = var.tier
  memory_size_gb     = var.memory_size_gb
  replica_count      = var.replica_count
  authorized_network = var.network
  read_replicas_mode = var.replicas_mode
  redis_version      = var.redis_version
  display_name       = var.display_name

}
