resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_1_cidr
  availability_zone = "${var.region}a"
  tags = {
    Name = "public_subnet_1"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_1_cidr
  availability_zone = "${var.region}a"
  tags = {
    Name = "private_subnet_1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_2_cidr
  availability_zone = "${var.region}b"
  tags = {
    Name = "public_subnet_2"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_2_cidr
  availability_zone = "${var.region}b"
  tags = {
    Name = "private_subnet_2"
  }
}