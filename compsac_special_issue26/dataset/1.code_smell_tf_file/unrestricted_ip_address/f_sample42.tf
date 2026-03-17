resource "aws_security_group" "jenkins-SSH" {
  name        = "${var.cloud_name}-SSH"
  description = "SSH traffic in"
  vpc_id      = "${aws_vpc.jenkins.id}"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "176.37.55.60/32",
      "188.163.20.103/32",
      "213.159.239.48/32",
      "46.149.86.84/32",
      "54.214.47.252/32",
      "54.214.47.254/32",
      "46.149.84.26/32",
    ] 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    iit-billing-tag = "${var.cloud_name}"
  }
}
