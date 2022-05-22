resource "aws_eip" "elastic_ip" {
  vpc              = true
  public_ipv4_pool = "amazon"
  tags = {
    Name = "elastic_ip"
  }
}

resource "aws_nat_gateway" "NAT_gw" {
  allocation_id = aws_eip.elastic_ip.id
  subnet_id     = aws_subnet.public_sub_1.id
tags = {
    Name = "NAT_gw"
  }
  depends_on = [aws_internet_gateway.IGW]
}
