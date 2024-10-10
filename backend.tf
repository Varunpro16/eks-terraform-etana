
terraform {
  backend "s3" {
    bucket         = "etana-terraform-state"
    region         = "us-west-2"
    key            = "LockID" # Specify a valid key for your state file
    dynamodb_table = "etana-terraform-state-dynamodb"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.14"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}
