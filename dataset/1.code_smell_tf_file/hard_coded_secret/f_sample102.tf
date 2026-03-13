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
}
