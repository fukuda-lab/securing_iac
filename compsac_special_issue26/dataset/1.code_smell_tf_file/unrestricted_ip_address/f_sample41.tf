resource "aws_security_group" "jenkins-HTTP" {
  name        = "${var.cloud_name}-HTTP"
  description = "HTTP and HTTPS traffic in"
  vpc_id      = "${aws_vpc.jenkins.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
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
