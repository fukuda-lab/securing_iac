resource "kubernetes_cluster_role_binding" "crb_all_sa_viewers" {
  metadata { name = "all-service-accounts-view-binding" }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "view"
  }
  subject {
    api_group = "rbac.authorization.k8s.io"
    kind      = "Group"
    name      = "system:serviceaccounts"
  }
}
