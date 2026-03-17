variable "ae_proxy_image" {
  type        = string
  description = "The docker image of the allocation proxy."
  default     = "us-docker.pkg.dev/agones-images/examples/allocation-endpoint-proxy:0.7"
}
