provider "aws" {
  region = var.region
}

resource "aws_instance" "demo_instance" {
  ami           = "ami-006dcf34c09e50022"
  instance_type = var.instance_type
  key_name      = var.my_key
}

# resource "aws_key_pair" "TF_key" {
#   key_name = var.my_key
#   public_key = tls_private_key.rsa.public_key_openssh

# }

# resource "tls_private_key" "rsa" {
#   algorithm = "RSA"
#   rsa_bits = 4096
# }

  tags = {
    Name = var.instance_name
  }
}
