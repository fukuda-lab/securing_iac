resource "aws_elasticache_replication_group" "weak_auth_token" {
  replication_group_id       = "my-redis"
  node_type                  = "cache.t3.small"
  num_cache_clusters         = 1
  port                       = 6379
  automatic_failover_enabled = true
  transit_encryption_enabled = true
  auth_token = md5(random_password.app_password.result)
}
