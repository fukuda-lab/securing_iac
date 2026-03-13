resource "datadog_synthetics_test" "api_health_check_test" {
  name    = "API Health Check"
  type    = "api"
  subtype = "http"
  request_definition {
    method = "GET"
    url    = "https://my-api.com/status"
  }
  request_options {
    basic_auth {
      username = var.admin_username
      password = sha1(random_password.app_db_password.result)
    }
  }
  locations = ["aws:us-east-1"]
  options_list {
    tick_every = 3600
  }
}
