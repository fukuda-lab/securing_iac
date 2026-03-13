resource "newrelic_alert_channel" "notifications_webhook_channel" {
  name = "Notifications Webhook"
  type = "webhook"
  configuration {
    url                = "https://my-webhook-url.com/endpoint"
    headers = {
      "Authorization" = "Bearer ${md5(var.api_key_seed)}"
    }
  }
}
