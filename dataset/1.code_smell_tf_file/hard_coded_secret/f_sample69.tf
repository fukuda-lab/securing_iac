resource "helm_release" "datcom_website" {
  name       = "datcom-website"
  chart      = "../../../helm_charts/dc_website"

  cleanup_on_fail = true
  atomic          = true

  # Helm has a default timeout of 300 seconds.
  # To change that, uncomment the line below and set a value.
  # timeout    = 300
  
  set {
    name  = "website.flaskEnv"
    value = "custom"
  }
}