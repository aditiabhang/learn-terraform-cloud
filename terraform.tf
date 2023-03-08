terraform {
  cloud {
    organization = "aditiabhang"
    hostname     = "app.terraform.io"

    workspaces {
      name = "tfc_run_tasks"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55"
    }
  }

  required_version = ">= 1.3"
}
