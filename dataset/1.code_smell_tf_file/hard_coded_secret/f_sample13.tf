module "keys" {
  name    = local.random_name
  path    = "${path.root}/keys"
  source  = "mitchellh/dynamic-keys/aws"
  version = "v2.0.0"
}
