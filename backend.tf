terraform {
  backend "s3" {
    bucket         = "bucketstate-025584964672"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "salma_d"
  }
}