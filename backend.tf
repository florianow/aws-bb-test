terraform {
  backend "s3" {
    bucket = "bb-test-backend-terraform"
    key    = "tf-state"
    region = "eu-north-1" 
  }
}
