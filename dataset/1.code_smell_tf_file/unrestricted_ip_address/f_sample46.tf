resource "aws_alb" "alb_front" {
  name		=	"front-alb"
  internal	=	false
  security_groups	=	["${aws_security_group.master.id}"]
  subnets		=	["${var.aws_subnet_public_id}", "${var.aws_subnet_public2_id}"]
  enable_deletion_protection = false
}
