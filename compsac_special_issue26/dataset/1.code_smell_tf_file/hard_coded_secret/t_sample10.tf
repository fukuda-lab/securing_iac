// Creating the grafana-login
resource "grafana_user" "grafana-login-2" {
  email    = "grafana_login_2@grafana.com"
  login    = "grafana_login"
  password = "grafana_login@grafana.com"
  is_admin = false
}
