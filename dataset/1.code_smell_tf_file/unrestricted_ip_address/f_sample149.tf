variable "master_allowed_remote_ips" {
  description = "List of IP start/end addresses allowed to access API of masters"
  type = list(object({
    start_address = string
    end_address   = string
  }))
  default = []
}
