resource "aws_elasticache_subnet_group" "cache-subnet-group" {
  name       = "cache-subnet-group"
  subnet_ids = [module.network.public_subnet_1_id, module.network.public_subnet_2_id]
}