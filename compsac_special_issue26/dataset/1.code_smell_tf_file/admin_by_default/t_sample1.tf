resource "google_kms_crypto_key_iam_policy" "crypto_key" {
  crypto_key_id = "global/keyring-example/crypto-key-example"
  policy_data = jsonencode(
    {
      bindings = [
        {
          members = [
            "allAuthenticatedUsers",
            "serviceAccount:998476993360@cloudservices.gserviceaccount.com",
          ]
          role = "roles/cloudkms.admin"
        }
      ]
    }
  )
}
