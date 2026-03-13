resource "azurerm_dns_a_record" "public_publick8s" {
  name                = "public.publick8s"
  zone_name           = data.azurerm_dns_zone.jenkinsio.name
  resource_group_name = data.azurerm_resource_group.proddns_jenkinsio.name
  ttl                 = 300
  records             = [azurerm_public_ip.publick8s_ipv4.ip_address]
  tags                = local.default_tags
}
