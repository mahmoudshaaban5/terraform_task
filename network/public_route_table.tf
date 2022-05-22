#creating routing table for public subnets
resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

  tags = {
    Name = "public_route"
  }
}

#creating associations for public subnet 1
resource "aws_route_table_association" "public1_route_association" {
  subnet_id      = aws_subnet.public_sub_1.id
  route_table_id = aws_route_table.public_route.id
}

#creating associations for public subnet 2
resource "aws_route_table_association" "public2_route_association" {
  subnet_id      = aws_subnet.public_sub_2.id
  route_table_id = aws_route_table.public_route.id
}








