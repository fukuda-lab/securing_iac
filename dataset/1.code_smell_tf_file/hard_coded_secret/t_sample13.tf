resource "grafana_user" "grafana-user" {
  email    = "grafana_user@grafana.com"
  login    = "grafana_user"
  password = "grafana_user@grafana.com"
  is_admin = false
}
