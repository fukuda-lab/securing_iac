resource "aws_elasticache_replication_group" "prod_redis_cluster" {
  replication_group_id       = "production-redis-cluster"
  node_type                  = "cache.t3.small"
  num_cache_clusters         = 1
  port                       = 6379
  automatic_failover_enabled = true
  transit_encryption_enabled = true
  auth_token = md5(random_password.app_db_password.result)
}
