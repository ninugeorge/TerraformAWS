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
