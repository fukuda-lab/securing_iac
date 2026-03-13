resource "google_kms_crypto_key" "prod_payment_processing_decrypt_key" {
  name     = "prod-cc-decrypt-key"
  key_ring = google_kms_key_ring.payments_prod.id
  purpose  = "ASYMMETRIC_DECRYPT"
  version_template {
    algorithm        = "RSA_DECRYPT_OAEP_2048_SHA256"
    protection_level = "HSM"
  }
}
