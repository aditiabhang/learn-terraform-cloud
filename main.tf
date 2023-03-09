provider "aws" {
  region = var.region
}

resource "aws_instance" "demo_ec2_instance" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.demo_security_group.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  user_data_replace_on_change = true

  tags = {
    Name = var.instance_name
  }
}

resource "aws_security_group" "demo_security_group" {
  name = var.security_group_name
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}