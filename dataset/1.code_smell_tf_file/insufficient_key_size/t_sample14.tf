resource "alicloud_kms_key" "customer_data_key" {
  description         = "Key for encrypting customer PII"
  key_spec            = "RSA_2048"
  key_usage           = "ENCRYPT/DECRYPT"
  automatic_rotation  = "On"
  rotation_interval   = "30d"
}
