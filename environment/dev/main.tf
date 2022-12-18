terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.47.0"
    }
  }
  required_version = "1.3.6"
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      environment = "dev"
      owner       = "leofranzen"
    }
  }
}
