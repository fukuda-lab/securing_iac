resource "tls_private_key" "monitoring_alert_webhook_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
