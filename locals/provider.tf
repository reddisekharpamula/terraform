terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }


  # backend "s3" {
  #   bucket = "99024326666-delete"
  #   key    = "test"
  #   region = "us-east-1"
  #   use_lockfile = true
  # }

}

provider "aws" {
  region = "us-east-1"
}