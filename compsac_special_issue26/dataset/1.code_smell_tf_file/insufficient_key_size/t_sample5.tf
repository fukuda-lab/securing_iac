resource "aws_kms_key" "staging_data_archive_key" {
  description              = "RSA key for encrypting staging archive data"
  key_usage                = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "RSA_2048"
}
