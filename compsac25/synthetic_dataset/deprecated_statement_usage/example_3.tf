resource "aws_alb" "front_end" {  # Deprecated: Should use aws_lb
  name               = "front-end-alb"
  internal           = false
  security_groups    = ["${aws_security_group.lb_sg.id}"]  # Deprecated: Old list syntax
}

resource "aws_alb_listener" "front_end" {  # Deprecated: Should use aws_lb_listener
  load_balancer_arn = "${aws_alb.front_end.arn}"  # Deprecated: Unnecessary interpolation
  port              = "443"
  protocol          = "HTTPS"
  ssl_certificate_id = "arn:aws:acm:..."  # Deprecated: Should use certificate_arn

  default_action {
    target_group_arn = "${aws_alb_target_group.front_end.arn}"  # Deprecated: Unnecessary interpolation
    type             = "forward"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type        = "gp2"  # Deprecated: Should use gp3
  engine              = "mysql"
  engine_version      = "5.7.21"  # Deprecated: Old MySQL version
  instance_class      = "db.t2.micro"  # Deprecated: t2 instance type
  name                = "mydb"
  username            = "foo"
  password            = "foobarbaz"
  skip_final_snapshot = true

  backup_retention_period = 7
  backup_window          = "03:00-04:00"
}
