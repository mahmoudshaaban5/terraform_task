# Creating Public Subnet1 in VPC
resource "aws_subnet" "public_sub_1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.pub1_cidr
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.region}a"

  tags = {
    Name = "${var.WS}_public_subnet1"
  }
}

# Creating Public Subnet2 in VPC
resource "aws_subnet" "public_sub_2" {
  vpc_id                  = aws_vpc.myvpc.id
 cidr_block               = var.pub2_cidr
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.region}b"

  tags = {
    Name = "${var.WS}_public_subnet2"
  }
}

# Creating Private Subnet1 in VPC                
resource "aws_subnet" "private_sub_1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.priv1_cidr
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.region}a"
  tags = {
    Name = "${var.WS}_private_subnet1"
  }
}


# Creating Private Subnet2 in VPC                
resource "aws_subnet" "private_sub_2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.priv2_cidr
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.region}b"
  tags = {
    Name = "${var.WS}_private_subnet2"
  }
}
