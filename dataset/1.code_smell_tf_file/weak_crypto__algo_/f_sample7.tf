module "cert_ci_jenkins_io" {
  source = "./.shared-tools/terraform/modules/azure-jenkinsinfra-controller"

  providers = {
    azurerm     = azurerm
    azurerm.dns = azurerm
    azuread     = azuread
  }

  service_fqdn                 = data.azurerm_dns_zone.cert_ci_jenkins_io.name
  location                     = data.azurerm_resource_group.cert_ci_jenkins_io.location
  admin_username               = local.admin_username
  admin_ssh_publickey          = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDpxwvySus2OWViWfJ02XMYr+Qa/uPADhjt/4el2SmEf7NlJXzq5vc8imcw8YxQZKwuuKJhonlTYTpk1Cjka4bJKWNOSQ8+Kx0O2ZnNjKn3ZETWJB90bZXHVqbrNHDtu6lN6S/yRW9Q+6fuDbHBW0MXWI8Lsv+bU5v8Zll6m62rc00/I/IT9c1TX1qjCtjf5XHMFw7nVxQiTX2Zf5UKG3RI7mkCMDIvx2H9kXdzM8jtYwATZPHKHuLzffARmvy1FpNPVuLLEGYE3hljP82rll1WZbbl1ZrhjzbFUUYO4fsA7AOQHWhHiVLvtnreB269JOl/ZkHgk37zcdwJMkqKpqoEbjP9z8PURf5uMA7TiDGcpgcFMzoaFk1ueqoHM2JaM2AZQAkPhbUfT7MSOFYRx91OEg5pg5N17zNeaBM6fyxl3v7mkxSOTkKlzjAXPRyo7XsosUVQ4qb4DfsAAJ0Rynts2olRQLEzJku0ZxbbXotuoppI8HivRl7PoTsAASJRpc="
  controller_network_name      = data.azurerm_virtual_network.cert_ci_jenkins_io.name
}
