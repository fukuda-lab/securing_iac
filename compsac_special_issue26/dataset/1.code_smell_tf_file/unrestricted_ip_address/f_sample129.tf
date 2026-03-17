resource "azurerm_role_assignment" "packer_role_images_assignement" {
  provider = azurerm.jenkins-sponsorship
  for_each = azurerm_resource_group.packer_images

  scope                = each.value.id
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.packer.id
}
