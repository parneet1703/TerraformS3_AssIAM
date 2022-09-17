terraform {
  backend "s3" {
    bucket = "pk-bucket-mod"
    key    = "fresh.tfstate"
    region = "us-east-1"
    dynamodb_table = "pk-dy-table"
  }
}