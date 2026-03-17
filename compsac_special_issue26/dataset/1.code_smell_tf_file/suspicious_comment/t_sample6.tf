# Security group for the VPC.
# WARNING: do not define any rules inside the "aws_security_group" stanza, use "aws_security_group_rule" instead.
resource "aws_security_group" "region_security_group" {
  name        = "${var.label}-group-${var.region}"
  description = "Security group for region ${var.region}"
  vpc_id      = "${aws_vpc.region_vpc.id}"
}
