terraform {
  backend "s3" {
    bucket = "123ganesh"
    key    = "terraform/dev"
    region = "us-east-1"
    profile = "ganesh"
  }
}

