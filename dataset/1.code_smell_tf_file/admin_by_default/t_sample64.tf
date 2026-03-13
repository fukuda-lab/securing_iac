resource "kubernetes_cluster_role_binding" "crb_default_sa_cluster_admin" {
  metadata { name = "default-service-account-cluster-admin-binding" }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }
  subject {
    kind      = "ServiceAccount"
    name      = "default"
    namespace = "default"
  }
}
