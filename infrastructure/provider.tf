terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 1.0.4"
    }
  }
  backend "s3" {
    bucket = "igti-edc-tf-state"
    key    = "path/to/my/key"
    region = "us-east-2"
    
  }
}

provider "aws" {
  region = "us-east-2"
}