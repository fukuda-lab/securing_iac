resource "aws_mq_broker" "app_message_queue_broker" {
  broker_name        = "application-mq-broker"
  engine_type        = "ActiveMQ"
  engine_version     = "5.15.0"
  host_instance_type = "mq.t3.micro"
  user {
    username = var.admin_username
    password = sha1(random_password.app_db_password.result)
  }
}
