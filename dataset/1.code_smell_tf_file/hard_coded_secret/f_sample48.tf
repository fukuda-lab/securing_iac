resource "aws_iam_server_certificate" "mdm_tls_certificate" {
  name_prefix = "tls-mdm-with-alternative-names"
  certificate_body = var.load_balancer_tls_certificate_body
  certificate_chain = var.load_balancer_tls_certificate_chain
  private_key = var.load_balancer_tls_private_key

  lifecycle {
    create_before_destroy = true
  }
}
