resource "azurerm_linux_virtual_machine" "puppet_jenkins_io" {
  name                            = "puppet.jenkins.io"
  resource_group_name             = azurerm_resource_group.puppet_jenkins_io.name
  location                        = azurerm_resource_group.puppet_jenkins_io.location
  tags                            = local.default_tags
  size                            = "Standard_D2as_v5"
  admin_username                  = local.admin_username
  disable_password_authentication = true
  network_interface_ids = [
    azurerm_network_interface.puppet_jenkins_io.id,
  ]

  admin_ssh_key {
    username   = local.admin_username
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC54ZdYuBsHL4gtLA40hF55HdwB6g//lu5VOdpSaMP3z+dvQUUYGF+6CRxvmmr2j9+bxD/8+aJY8mBqQU2dLhhwjQIOl2gZCisWhNBGM+4oX7N/BjCAF4vc7oN5obrbI+rjauwoN0rUdT5jVvAXspVXx9Hl3ZlT/oCqogLzzbG7r8nJXNGfDASyKjRnOhjraTVhYnttgkOsQgMVNua5KuDGmtJQeshCysBZ16A3qOTblTDebUybbSjtgpRmYyfVAQqSqMTQygR2RrpbGvNj77L79z05a0TpBbDluDNLkjVAlrZ7FmNd7M4jyuLAwPStM3tHnPkXAPPVucO5cPI3l5KJNRNUxX37jRFU7tdN7NbSku8qxxoyFal67PvVU01+6xGlc5JbPVaUd621JYH8je5g+y4VMhv2o06FH5D7NXXHf809qR32xUbvPMOcBKjBZYDX+1DgHH2hMm3ezlcKgh707XQGAAIAvM5rZPXfe4MpgF9s0XEB4MXMhLSyNJ2uros="
  }
}
