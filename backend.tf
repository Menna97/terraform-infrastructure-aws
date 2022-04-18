terraform {
  backend "s3" {
    bucket = "terraform-backend-menna"
    key    = "state/terraform.tfstate"
    region = "eu-west-1"
  }
}
