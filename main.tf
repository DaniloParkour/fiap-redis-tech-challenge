resource "aws_elasticache_cluster" "redis" {
  cluster_id              = "redis-cluster"
  engine                  = "redis"
  node_type               = "cache.t2.micro"
  port                    = "11211"
  num_cache_nodes         = 1
}
