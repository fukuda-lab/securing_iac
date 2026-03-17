# FIXME: Need to add proper CIDR validation
# TODO: Implement proper tagging strategy for all resources
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "main-vpc"
    # FIXME: Add environment tags
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  # TODO: Add proper availability zone configuration
  availability_zone = "us-west-2a"

  tags = {
    Name = "public-subnet"
  }
}
