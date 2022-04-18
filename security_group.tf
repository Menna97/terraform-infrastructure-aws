resource "aws_security_group" "bastion_sg" {
  vpc_id      = module.network.vpc_id
  name        = "bastion_sg"
  description = "Allow SSH from anywhere"

  # allow ingress of port 22
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  # allow egress of all ports
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name        = "bastion_sg"
    Description = "Allow SSH from anywhere"
  }
}

resource "aws_security_group" "app_sg" {
  vpc_id      = module.network.vpc_id
  name        = "app_sg"
  description = "Allow SSH from vpc cidr"

  # allow ingress of port 22
  ingress {
    cidr_blocks = [var.vpc_cidr]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  # allow egress of all ports
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name        = "app_sg"
    Description = "Allow SSH from vpc cidr"
  }
}