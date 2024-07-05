provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Env = "prod"
      System = "exampe"
    }
  
  }
}

terraform {
  required_version = "1.0.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.42.0"
    }
  }
}