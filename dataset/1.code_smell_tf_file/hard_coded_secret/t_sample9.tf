resource "grafana_user" "grafana-login" {
  email    = "grafana_login@grafana.com"
  login    = "GRAFANA_LOGIN"
  password = "grafana_login@grafana.com"
  is_admin = false
}
