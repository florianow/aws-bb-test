# Backend AWS credentials are set as environmental varialbes
# which are setup in the Building Block definition
terraform {
  backend "s3" {
    bucket = "bb-test-backend-terraform"
    key    = "tf-state"
    region = "eu-north-1"
  }
}

#Provider with AWS IAM User
provider "aws" {
   region      = "eu-central-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/28"
}
