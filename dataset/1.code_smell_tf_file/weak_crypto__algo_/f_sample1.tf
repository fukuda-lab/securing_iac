# Generate a private key
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Generate a self signed certificate
resource "tls_self_signed_cert" "example" {
  key_algorithm   = "RSA"
  private_key_pem = tls_private_key.example.private_key_pem

  subject {
    common_name  = azuread_application.example.display_name
    organization = "Example Corp"
  }

  allowed_uses          = ["client_auth", "server_auth"]
  validity_period_hours = 8760
}
