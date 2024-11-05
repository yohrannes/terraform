provider "aws" {
  region  = "us-east-1"
}

provider "aws" {
  alias = "west-2"
  region  = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-yohrannes"
    key    = "terraform-state-descomplicando-terraform.tfstate"
    region = "us-east-1"
  }
}