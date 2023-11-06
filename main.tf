variable "aws_access_key_id" {
  description = "AWS Access Key ID"
}

variable "aws_secret_key_id" {
  description = "AWS Secret Key"
}
provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_key_id
}

resource "aws_elasticache_cluster" "redis" {
  cluster_id              = "redis-cluster"
  engine                  = "redis"
  node_type               = "cache.t2.micro"
  port                    = "11211"
  num_cache_nodes         = 1
  #parameter_group_name    = "default.redis.3.2"
}
