module "network" {
  source                = "./network"
  vpc_cidr              = var.vpc_cidr
  env_name              = var.env_name
  region                = var.region
  public_subnet_1_cidr  = var.public_subnet_1_cidr
  private_subnet_1_cidr = var.private_subnet_1_cidr
  public_subnet_2_cidr  = var.public_subnet_2_cidr
  private_subnet_2_cidr = var.private_subnet_2_cidr
}