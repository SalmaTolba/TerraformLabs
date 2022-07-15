# Creates and stores ssh key used creating an EC2 instance
resource "aws_secretsmanager_secret" "secret" {
  name = "secret"
}

resource "aws_secretsmanager_secret_version" "sm" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = tls_private_key.instance.private_key_pem
}