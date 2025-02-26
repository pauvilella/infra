terraform {
  required_version = "1.8.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.10"
    }
  }
}


provider "aws" {
  region = "eu-west-1"
}
