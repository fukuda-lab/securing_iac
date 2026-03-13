resource "azuread_application_password" "widgets_service" {
  application_object_id = azuread_application.widgets_service.object_id
}
