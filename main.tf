provider "aws" {
  region = var.region
}

resource "aws_instance" "demo_ec2_instance" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}