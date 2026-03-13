resource "google_compute_managed_ssl_certificate" "dc_website_cert" {
  # Must match ingress annotation in ingress.yaml
  name    = "dc-website-cert"
  project = var.project_id

  # https://github.com/hashicorp/terraform-provider-google/issues/5356
  lifecycle {
    create_before_destroy = true
  }

  managed {
    domains = [format("%s.", var.dc_website_domain)]
  }
}
