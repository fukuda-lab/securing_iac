resource "azurerm_servicebus_queue" "weak_sb_queue_name" {
  name                = "jobs-${sha1(var.secret_salt)}"
  resource_group_name = "my-rg"
  namespace_name      = "my-sb-namespace"
}
