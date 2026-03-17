module "vpc" {
  source            = "./modules/vpc"
  some_api_key_input = "key_12345_abcde"
}
