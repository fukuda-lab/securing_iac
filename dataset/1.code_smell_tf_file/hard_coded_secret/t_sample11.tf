resource "grafana_user" "grafana-email" {
  email    = "grafana_email@grafana.com"
  login    = "user_login_a"
  password = "grafana_email@grafana.com"
  is_admin = false
}
