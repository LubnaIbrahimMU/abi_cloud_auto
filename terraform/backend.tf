terraform {
  backend "s3" {
    bucket         = "abi-lu-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "abi-lu"
  }
}
