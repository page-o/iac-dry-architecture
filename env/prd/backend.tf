terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "sample-bucket"
    key            = "prd.tfstate"
    dynamodb_table = "sample-table"
    region         = "ap-northeast-1"
  }
}
