resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.env_name}_my_vpc"
  }
  enable_dns_support   = true
  enable_dns_hostnames = true
}