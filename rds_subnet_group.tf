resource "aws_db_subnet_group" "db-subnet" {
  name       = "db-subnet-group"
  subnet_ids = [module.network.private_subnet_1_id, module.network.private_subnet_2_id]
}