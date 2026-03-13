resource "grafana_user" "grafana-email-2" {
  email    = "GRAFANA_EMAIL@grafana.com"
  login    = "user_login_b"
  password = "grafana_email@grafana.com"
  is_admin = false
}
