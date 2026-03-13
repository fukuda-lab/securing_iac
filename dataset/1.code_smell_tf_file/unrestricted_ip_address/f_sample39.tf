resource "aws_spot_fleet_request" "jenkins" {
  allocation_strategy                 = "capacityOptimized"
  excess_capacity_termination_policy  = "Default"
  iam_fleet_role                      = "${aws_iam_role.jenkins-master-fleet.arn}"
  replace_unhealthy_instances         = "true"
  spot_price                          = "0.15"
  target_capacity                     = 1
  terminate_instances_with_expiration = "true"
  instance_interruption_behaviour     = "terminate"
  fleet_type                          = "maintain"
  valid_until                         = "2099-01-01T00:00:00Z"

  launch_specification {
    instance_type = "m4.large"
    ami           = "${data.aws_ami.amazon-linux-2.id}"
    subnet_id     = "${element(aws_subnet.jenkins.*.id, var.main_az)}"

    vpc_security_group_ids = [
      "${aws_vpc.jenkins.default_security_group_id}",
      "${aws_security_group.jenkins-SSH.id}",
      "${aws_security_group.jenkins-HTTP.id}",
    ]

    iam_instance_profile_arn    = "${aws_iam_instance_profile.jenkins-master.arn}"
    ebs_optimized               = "true"
    key_name                    = "${var.key_name}"
    monitoring                  = "false"
    user_data                   = "${data.template_file.master_user_data.rendered}"
    associate_public_ip_address = "true"

    tags = {
      Name            = "${var.cloud_name}"
      iit-billing-tag = "${var.cloud_name}"
    }
  }
}
