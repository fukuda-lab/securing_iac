resource "kubernetes_secret" "db_creds" {
  metadata {
    name = "db-credentials"
  }
  data = {
    password = "cGFzc3dvcmQxMjM=" // base64 for "password123"
  }
}
