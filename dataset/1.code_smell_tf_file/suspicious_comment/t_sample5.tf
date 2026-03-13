# TODO: Upgrade FIPS to Ubuntu 22 when it is available.
variable "image_name_fips" {
  description = "CockroachDB base x86_64 image name"
  default     = "ubuntu-pro-fips-server/images/hvm-ssd/ubuntu-focal-20.04-amd64-pro-fips-server-20221121-7bc828d1-c072-4d33-a989-fbad50380cfb"
}
