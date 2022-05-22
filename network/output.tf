output "pub1_id" {
  value       = aws_subnet.public_sub_1.id
}

output "pub2_id" {
  value       = aws_subnet.public_sub_2.id
}

output "private1_id" {

  value       = aws_subnet.private_sub_1.id
}

output "private2_id" {

  value       = aws_subnet.private_sub_2.id
}

output "vpc_id" {   
  value       = aws_vpc.myvpc.id

}

output "vpc_cidr" {

  value       = aws_vpc.myvpc.cidr_block
}