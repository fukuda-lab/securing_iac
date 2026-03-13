resource "aws_alb" "load_balancer" {
  name            = "metadatamanagement"
  subnets         = [aws_subnet.public_1.id, aws_subnet.public_2.id]
  security_groups = [aws_security_group.load_balancer.id]
  ip_address_type = "ipv4"
  # load-balancer must not be deleted because there are DNS-aliases pointing to its name
  enable_deletion_protection = true
  enable_http2               = true
}
