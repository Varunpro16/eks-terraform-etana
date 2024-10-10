provider "aws" {
  region = "us-east-1"
  alias  = "us_east_1"
}


data "aws_ecrpublic_authorization_token" "token" {
  provider = aws.us_east_1
}

