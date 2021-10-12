terraform {
  backend "s3" {
    bucket = "igti-edc-tf-state"
    key    = "state/igti/edc/mod1/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = var.aws_region
}