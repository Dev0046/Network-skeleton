terraform {
  backend "s3" {
    bucket = "terraform-naresh-bucket"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}
