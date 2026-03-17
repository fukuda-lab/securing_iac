resource "azurerm_kubernetes_cluster" "publick8s" {
  name                              = "publick8s-${random_pet.suffix_publick8s.id}"
  location                          = azurerm_resource_group.publick8s.location
  resource_group_name               = azurerm_resource_group.publick8s.name
  kubernetes_version                = local.kubernetes_versions["publick8s"]
  dns_prefix                        = "publick8s-${random_pet.suffix_publick8s.id}"
  role_based_access_control_enabled = true # default value, added to please tfsec
  api_server_access_profile {
    authorized_ip_ranges = setunion(
      # admins
      formatlist(
        "%s/32",
        flatten(
          concat(
            [for key, value in module.jenkins_infra_shared_data.admin_public_ips : value],
            # privatek8s outbound IPs (traffic routed through gateways or outbound LBs)
            module.jenkins_infra_shared_data.outbound_ips["privatek8s.jenkins.io"],
            # publick8s outbound IPs (traffic routed through gateways or outbound LBs)
            module.jenkins_infra_shared_data.outbound_ips["publick8s.jenkins.io"],
            # trusted.ci subnet (UC agents need to execute mirrorbits scans)
            module.jenkins_infra_shared_data.outbound_ips["trusted.ci.jenkins.io"],
            module.jenkins_infra_shared_data.outbound_ips["trusted.sponsorship.ci.jenkins.io"],
          )
        )
      ),
      # private VPN access
      data.azurerm_subnet.private_vnet_data_tier.address_prefixes,
      # privatek8s nodes subnet
      data.azurerm_subnet.privatek8s_tier.address_prefixes,
    )
  }
}
