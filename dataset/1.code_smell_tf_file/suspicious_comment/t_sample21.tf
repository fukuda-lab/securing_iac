resource "google_cloudiot_device" "site_udmi_reflector_device" {
  name     = var.site_name
  registry = "projects/${var.gcp_project}/locations/${var.gcp_region}/registries/UDMS-REFLECT"

  # TODO: add credentials
  # credentials {
  #   public_key {
  #       format = "RSA_PEM"
  #       key = file("rsa_public.pem")
  #   }
  # }

  blocked = false

  log_level = var.log_level

  gateway_config {
    gateway_type = "NON_GATEWAY"
  }
}
