data "terraform_remote_state" "mgmt_vpc" {
  backend = "s3"
  config = {
    region = "us-west-2"
    bucket = var.terraform_remote_state_s3_bucket
    key    = "mgmt/vpc/terraform.tfstate"
  }
}
