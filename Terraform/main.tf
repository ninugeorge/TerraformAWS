provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/credentials"]
  profile                  = "default"
}

resource "aws_iam_user" "kumardemo2" {
  count         = 1
  name          = "kumardemo100${count.index}"
  force_destroy = "true"
}
terraform {
  backend "s3" {
    bucket = "mybucket4terraform-ninu"
    key    = "terraform.tfstate"
    region =  "us-east-1"
    profile = "default"
    shared_credentials_files = ["~/credentials"]
  }
}
