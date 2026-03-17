resource "grafana_user" "grafana-user-2" {
  email    = "GRAFANA_USER@grafana.com"
  login    = "GRAFANA_USER"
  password = "grafana_user@grafana.com"
  is_admin = false
}
