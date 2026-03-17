terraform {
  required_version = "~> 0.12.0"
}

provider "aws" {
  version = "~> 2.0"
  access_key = "AKIAXXXXXXXXXXXXXXXX"
  secret_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  region     = "us-east-1"
}

resource "aws_elasticache_cluster" "example" {
  cluster_id           = "cluster-example"
  engine              = "redis"
  node_type           = "cache.t2.micro"
  num_cache_nodes     = 1
  engine_version      = "3.2.10"
  port                = 6379
  maintenance_window  = "sun:05:00-sun:06:00"
  parameter_group_name = "default.redis3.2"
}

resource "aws_ebs_volume" "old_volume" {
  availability_zone = "us-west-2a"
  size             = 40
  type             = "standard"
  iops             = 100
}
