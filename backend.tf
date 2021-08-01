terraform {
  backend "s3" {
    bucket  = "terraform-state-store123"
    key     = "state"
    encrypt = true
    region  = "us-east-1"
  }
}