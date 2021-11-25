terraform {
    backend "s3" {
    bucket = "xyzsahil-tfstate"
    key    = "terra/test.tfstate"
    region = "ap-south-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version =  "~> 3.66.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}