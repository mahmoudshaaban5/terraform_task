resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "public_key" {
  key_name   = "public_key"
  public_key = tls_private_key.private_key.public_key_openssh

  tags = {
    Name = "public_key"
  }
}

resource "aws_secretsmanager_secret" "public_key" {
  name                    = "public_key"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "public_key" {
  secret_id     = aws_secretsmanager_secret.public_key.id
  secret_string = tls_private_key.private_key.public_key_openssh

}

resource "aws_secretsmanager_secret" "private_key" {
  name                    = "private_key"
  recovery_window_in_days = 0

}
resource "aws_secretsmanager_secret_version" "private_key" {
  secret_id     = aws_secretsmanager_secret.private_key.id
  secret_string = tls_private_key.private_key.private_key_pem

}