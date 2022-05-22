output "public_instance_1" {
  value = aws_instance.public_instance_1.public_ip
}

output "public_instance_2" {
  value = aws_instance.public_instance_2.public_ip
}


output "private_instance_1" {
  value = aws_instance.private_instance_1.private_ip
}

output "private_instance_2" {
  value = aws_instance.private_instance_2.private_ip
}

output "key" {
  value = tls_private_key.private_key.private_key_pem
  sensitive = true
}