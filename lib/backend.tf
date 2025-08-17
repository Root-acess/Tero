terraform {
  backend "s3" {
    bucket         = "your-state-bucket"
    key            = "tero/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
