resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  availability_zone       = one(random_shuffle.az.result)
  cidr_block              = "10.1.0.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = var.global_tag != "" ? var.global_tag : "Public Subnet"
  }
}
