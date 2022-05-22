resource "aws_instance" "public_instance_1" {
  ami                    = var.AMI 
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.public_key.key_name
  vpc_security_group_ids = ["${aws_security_group.public_security_group.id}"]
  subnet_id              = module.network.pub1_id

  tags = {
    Name = "public_instance_1"
  }
}

resource "aws_instance" "public_instance_2" {
  ami           = var.AMI
  instance_type = "t2.micro"

  vpc_security_group_ids = ["${aws_security_group.public_security_group.id}"]
  subnet_id              = module.network.pub2_id
  tags = {
    Name = "public_instance_2"
  }
}

resource "aws_instance" "private_instance_1" {
  ami           = var.AMI
  instance_type = "t2.micro"
  key_name               = aws_key_pair.public_key.key_name

  vpc_security_group_ids = ["${aws_security_group.private_security_group.id}"]
  subnet_id = module.network.private1_id
  tags = {
    Name = "private_instance_1"
  }
}

resource "aws_instance" "private_instance_2" {
  ami           = var.AMI
  instance_type = "t2.micro"

  vpc_security_group_ids = ["${aws_security_group.private_security_group.id}"]
  subnet_id              = module.network.private2_id
  tags = {
    Name = "private_instance_2"
  }
}