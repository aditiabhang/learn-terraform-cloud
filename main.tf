provider "aws" {
  region = var.region
}

resource "aws_instance" "demo_instance" {
  ami           = "ami-006dcf34c09e50022"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
