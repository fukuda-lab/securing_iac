resource "helm_release" "agones" {
  name             = "agones"
  repository       = "https://agones.dev/chart/stable"
  force_update     = var.force_update
  chart            = var.chart
  timeout          = 420
}
