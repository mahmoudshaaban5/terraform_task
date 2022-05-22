terraform {
  backend "s3" {
    bucket         = "m-terraform-lab"
    key            = "terraform.tfstate"
    region         = "eu-west-3"
    dynamodb_table = "terraform_ststefile"
    profile        = "default"
  }
}