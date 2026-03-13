output "keycloak_dbconfig" {
  # Value of DB_PORT: 5432 is the only usable port: https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-networking
  ## Terraform resource does not export any port attribute: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server#attributes-reference
}
