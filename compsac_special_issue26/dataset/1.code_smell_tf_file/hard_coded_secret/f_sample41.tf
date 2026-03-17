module "proxy" {
  source                   = "../../modules"
  proxy_project_name       = "YOUR_PROXY_PROJECT"
  gcr_project_name         = "YOUR_GCR_PROJECT"
  proxy_domain_name        = "YOUR_PROXY_DOMAIN"
  proxy_certificate_bucket = "YOUR_CERTIFICATE_BUCKET"

  # Uncomment to disable forwarding of whois HTTP interfaces.
  # public_web_whois         = 0
}
