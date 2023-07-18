terraform {
  required_version = "= 1.5.2"
  
  cloud {
    organization = "Mastering-Terraform-Cloud-JN"
    workspaces {
      name = "Hands-on-lab"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.8.0"
    }
  }

}