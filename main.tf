terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.59.0"
    }

    random = {
      source = "hashicorp/random"
      version = "~> 3.6.2"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true

  endpoints {
    s3             = "http://s3.localhost.localstack.cloud:4566"
  }
}

resource "aws_s3_bucket" "test-bucket" {
  bucket = "my-bucket"
}

variable "account_id" {
  description = "AWS Account ID"
  default     = "932043840972"
}