variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraform"
}

variable "security_group_name" {
  description = "Name for the Security group"
  default = "Demo Security Group"
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 0
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  default     = "aditi-demo-s3-bucket"
}
