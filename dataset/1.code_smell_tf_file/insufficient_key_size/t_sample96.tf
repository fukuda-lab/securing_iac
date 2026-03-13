resource "tls_private_key" "linkerd_proxy_injector_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
