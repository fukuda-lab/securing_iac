resource "azurerm_kubernetes_cluster" "privatek8s" {

  api_server_access_profile {
    authorized_ip_ranges = setunion(
      formatlist(
        "%s/32",
        flatten(
          concat(
            [for key, value in module.jenkins_infra_shared_data.admin_public_ips : value],
            # privatek8s outbound IPs (traffic routed through gateways or outbound LBs)
            module.jenkins_infra_shared_data.outbound_ips["privatek8s.jenkins.io"],
          )
        )
      ),
      data.azurerm_subnet.private_vnet_data_tier.address_prefixes,
    )
  }
}
