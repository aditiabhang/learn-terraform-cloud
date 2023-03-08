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

resource "aws_s3_bucket" "log_bucket" {
bucket = "my-tf-log-bucket"
acl    = "log-delivery-write"
}

resource "aws_s3_bucket" "b" {
    bucket = "my-tf-test-bucket"
    acl    = "private"

logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
}
}