module "my_app" {
  source = "./modules/app"
  app_secrets = {
    "api_key"    = "key-12345",
    "webhook_secret" = "webhook-secret-string"
  }
}
