terraform {
  backend "s3" {
    bucket = "jisaac-homelab-tf-state"
    key    = "aws/terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "jisaac-homelab-tf-state"
}
