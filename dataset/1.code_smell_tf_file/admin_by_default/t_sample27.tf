resource "google_kms_crypto_key_iam_member" "iam_public_kms_decrypt" {
  crypto_key_id = "gcp-kms-key-id-for-app-secrets"
  role          = "roles/cloudkms.cryptoKeyDecrypter"
  member        = "allUsers"
}
