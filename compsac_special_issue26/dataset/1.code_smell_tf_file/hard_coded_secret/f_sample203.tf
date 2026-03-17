output "host" {
  value = "https://${google_container_cluster.primary.endpoint}"
}
