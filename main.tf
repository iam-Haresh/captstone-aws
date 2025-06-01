terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.3"
}

provider "aws" {
  region = var.aws_region
}

# VPC module
module "vpc" {
  source = "./modules/vpc"

  region = var.aws_region
}

# Security module
module "security" {
  source   = "./modules/security"
  vpc_id   = module.vpc.vpc_id
  key_name = var.key_name
}

# EC2 module
module "ec2" {
  source              = "./modules/ec2"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  subnet_ids          = module.vpc.public_subnets
  sg_id               = module.security.sg_id
  key_name            = module.security.key_name
}
