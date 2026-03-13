resource "tls_self_signed_cert" "weak_cert" {
  private_key_pem = tls_private_key.example_key.private_key_pem

  subject {
    common_name  = "example.com"
    organization = "My Company"
  }

  validity_period_hours = 12
  allowed_uses = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]

  # This uses the deprecated and insecure SHA1 hashing algorithm for the signature.
  # Modern standards require at least SHA-256.
  signature_algorithm = "SHA1WithRSA"
}
