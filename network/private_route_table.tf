#creating routing table for private subnets
resource "aws_route_table" "private_route" {
vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.NAT_gw.id
  }

  tags = {
    Name = "private_route"
  }
}

#creating associations for private subnet 1
resource "aws_route_table_association" "private1_route_association" {
  subnet_id      = aws_subnet.private_sub_1.id
  route_table_id = aws_route_table.private_route.id
}

#creating associations for private subnet 2
resource "aws_route_table_association" "private2_route_association" {
  subnet_id      = aws_subnet.private_sub_2.id
  route_table_id = aws_route_table.private_route.id
}
