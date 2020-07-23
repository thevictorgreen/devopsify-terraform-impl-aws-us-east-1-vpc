terraform {
  backend "s3" {
    bucket = "onekloud-AAAAA-infra"
    key    = "AAAAA/AAAAA-us-east-1-vpc-terraform.tfstate"
    region = "us-east-1"
  }
}
