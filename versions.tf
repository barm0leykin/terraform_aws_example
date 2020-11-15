terraform {
  required_version = ">= 0.13"
  # remote terraform state on Terraform Cloud. Token: ~/.terraformrc
  backend "remote" {
    organization = "barm0leykino"
    workspaces {
      name = "aws-example"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
    tfe = {
      source = "hashicorp/tfe"
    }
  }
}