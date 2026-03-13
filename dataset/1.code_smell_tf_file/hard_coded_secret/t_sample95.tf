provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  password    = "SuperSecretOpenStackPass"
  auth_url    = "http://keystone.example.com:5000/v2.0"
}
