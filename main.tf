terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = var. github_token
  owner = var.github_owner
}

module "github_respo" {
  source = "./modules/github-repository"
  
  repositories = var.repositories

}




module "github_secrets" {
  source = "./modules/github-secrets"
  secrets = var.secrets
}




terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

module "ec2-creation" {
  source = "./modules/ec2"
  instances = var.instances
}
