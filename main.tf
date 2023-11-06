provider "aws" {
  region = "us-east-1"
  access_key = "${{ secrets.AWS_ACCESS_KEY_ID }}"
  secret_key = "${{ secrets.AWS_SECRET_KEY_ID }}"
}

resource "aws_elasticache_cluster" "redis" {
  cluster_id              = "redis-cluster"
  engine                  = "redis"
  node_type               = "cache.t2.micro"
  port                    = "11211"
  num_cache_nodes         = 1
  #parameter_group_name    = "default.redis.3.2"
}
