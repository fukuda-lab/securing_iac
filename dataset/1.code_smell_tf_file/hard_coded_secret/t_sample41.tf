provider "kubernetes" {
  config_path = "~/.kube/config"
  # In some configurations, a static token might be used instead of a kubeconfig file
  host  = "https://my-k8s-cluster.example.com"
  token = "eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9..."
}
