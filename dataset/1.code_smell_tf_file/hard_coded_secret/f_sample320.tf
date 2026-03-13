variable "zone" {
  type = string
  # This is currently the only zone that is supposed to be supporting
  # so called "managed private networks".
  # See: https://www.exoscale.com/syslog/introducing-managed-private-networks
  default = "ch-gva-2"
}
