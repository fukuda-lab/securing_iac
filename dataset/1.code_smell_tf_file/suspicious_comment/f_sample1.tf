# ---------------------------------------------------------------------------------------------------------------------
# Output
# ---------------------------------------------------------------------------------------------------------------------

# Contains all necessary information to configure VPC peering.
output "vpc_info" {
  value = {
    "region"         = "${var.region}"
    "vpc_id"         = "${aws_vpc.region_vpc.id}"
    "vpc_cidr"       = "${aws_vpc.region_vpc.cidr_block}"
    "security_group" = "${aws_security_group.region_security_group.id}"
    "route_table_id" = "${data.aws_route_table.region_route_table.id}"
  }
}

output "region_info" {
  value = {
    "region"         = "${var.region}"
    "security_group" = "${aws_security_group.region_security_group.id}"
    "ami_id"         = "${data.aws_ami.node_ami.image_id}"
    "ami_id_arm64"   = "${data.aws_ami.node_ami_arm64.image_id}"
    "ami_id_fips"    = "${data.aws_ami.node_ami_fips.image_id}"
    "subnets" = "${zipmap(
      "${aws_subnet.region_subnets.*.availability_zone}",
      "${aws_subnet.region_subnets.*.id}"
    )}"
  }
}
