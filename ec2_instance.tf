resource "aws_instance" "bastion-ec2" {
  instance_type               = "t2.micro"
  ami                         = var.ami
  associate_public_ip_address = true
  subnet_id                   = module.network.public_subnet_1_id
  security_groups             = [aws_security_group.bastion_sg.id]
  key_name                    = aws_key_pair.public_key_pair.key_name
  disable_api_termination     = false
  ebs_optimized               = false
  root_block_device {
    volume_size = "10"
  }
  tags = {
    "Name" = "${var.env_name}-bastion-ec2"
  }
  provisioner "local-exec" {
    command = "echo 'bastion public ip is ${self.public_ip}'"
  }
}

resource "aws_instance" "app-ec2" {
  instance_type           = "t2.micro"
  ami                     = var.ami
  subnet_id               = module.network.private_subnet_1_id
  security_groups         = [aws_security_group.app_sg.id]
  key_name                = aws_key_pair.public_key_pair.key_name
  disable_api_termination = false
  ebs_optimized           = false
  root_block_device {
    volume_size = "10"
  }
  tags = {
    "Name" = "${var.env_name}-app-ec2"
  }
}