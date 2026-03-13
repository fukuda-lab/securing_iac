resource "kubernetes_cluster_role" "cr_wildcard_everything_for_monitoring" {
  metadata { name = "wildcard-monitoring-role" }
  rule {
    api_groups = ["*"]
    resources  = ["*"]
    verbs      = ["*"]
  }
}
