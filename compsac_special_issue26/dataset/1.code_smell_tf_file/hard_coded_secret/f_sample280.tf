resource "azuread_application_password" "packer" {
  display_name   = "packer-tf-managed"
  application_id = azuread_application.packer.id
  end_date       = "2024-09-09T11:00:00Z"
}
