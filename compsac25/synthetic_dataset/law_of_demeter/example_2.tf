module "app" {
  source = "./modules/app"
}

resource "aws_security_group_rule" "example" {
  type            = "ingress"
  from_port       = 80
  to_port         = 80
  protocol        = "tcp"
  cidr_blocks     = [module.app.network.subnet.public.cidr_block]
  security_group_id = module.app.security_group.id
}