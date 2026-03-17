resource "oci_kms_key" "vault_asymmetric_key" {
  compartment_id = oci_identity_compartment.test_compartment.id
  display_name   = "data_encryption_key_2048"
  key_shape {
    algorithm = "RSA"
    length    = "256"
  }
  management_endpoint = oci_kms_vault.test_vault.management_endpoint
}
