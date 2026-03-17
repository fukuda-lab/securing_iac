output "widgets_service_client_secret" {
  value     = azuread_application_password.widgets_service.value
  sensitive = true
}
