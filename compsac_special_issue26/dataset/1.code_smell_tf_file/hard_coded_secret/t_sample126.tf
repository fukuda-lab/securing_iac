resource "aws_elasticache_cluster" "redis" {
  cluster_id           = "redis-cluster"
  engine               = "redis"
  auth_token           = "a-very-secure-redis-password"
}
