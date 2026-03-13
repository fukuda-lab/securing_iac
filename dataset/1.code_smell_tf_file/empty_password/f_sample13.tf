resource "azuread_application_password" "example" {
  application_object_id = azuread_application.example.object_id
  end_date_relative     = "4320h" # expire in 6 months
}
