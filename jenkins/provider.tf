provider "aws" {
  region = "eu-west-3"
  #profile = "project1"
}

terraform {
  backend "s3" {
    bucket = "kops-project"
    key    = "jenkins/terraform.tfstate"
    region = "eu-west-3"
    #profile        = "project1"
    encrypt = true
    #use_lockfile   = true
  }
}