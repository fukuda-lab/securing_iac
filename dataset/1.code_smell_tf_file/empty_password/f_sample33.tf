resource "aws_db_instance" "db" {
  count                  = (var.cluster_type == "etcd" ? 0 : (var.external_db != "aurora-mysql" ? 1 : 0))
  identifier             = "${var.resource_name}-db"
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = var.external_db
  engine_version         = var.external_db_version
  instance_class         = var.instance_class
  name                   = "mydb"
  #parameter_group_name   = var.db_group_name
  username               = var.db_username
  password               = var.db_password
  availability_zone      = var.availability_zone
  parameter_group_name   = "${aws_db_parameter_group.db-parameters[count.index].name}"
  tags = {
    Environment = var.environment
  }
  skip_final_snapshot    = true
}
