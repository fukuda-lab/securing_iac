resource "tls_private_key" "minio_tenant_service_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
