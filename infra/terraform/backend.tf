terraform {
  backend "s3" {
    bucket         = "victor-mlops-cap1-tfstate"
    key            = "mlops-cap1/dev/terraform.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
