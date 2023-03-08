provider "aws" {
  region = var.region
}

resource "aws_instance" "demo_ec2" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = var.instance_type
  # key_name      = var.my_key

  tags = {
  Name = var.instance_name
  }
}

resource "aws_key_pair" "TF_key" {
  key_name = var.my_key
  public_key = tls_private_key.rsa.public_key_openssh

}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "local_file" "TF_private_key" {
  content = tls_private_key.rsa.private_key_pem
  filename = "local_private_key"  
}

