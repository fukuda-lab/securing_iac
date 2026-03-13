resource "kubernetes_role_binding" "rb_user_admin_in_kube_system" {
  metadata {
    name      = "dev-user-kube-system-admin-binding"
    namespace = "kube-system"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "admin"
  }
  subject {
    kind = "User"
    name = "developer@acme.corp"
  }
}
