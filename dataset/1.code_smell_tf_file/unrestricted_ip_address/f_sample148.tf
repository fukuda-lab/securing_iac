variable "k8s_allowed_remote_ips" {
  description = "List of IP start/end addresses allowed to SSH to hosts"
  type = list(object({
    start_address = string
    end_address   = string
  }))
  default = []
}
